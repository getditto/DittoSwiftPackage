// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwiftWrapper"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .target(
            name: "DittoSwiftWrapper",
            dependencies: [
                .target(name: "DittoSwift"),
                .target(name: "DittoObjC"),
            ]
        ),
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.0/dist/DittoSwift.xcframework.zip",
            checksum: "970a926ea88b34711bf9698e05ec5f6a5765cbf798b6631e3aadbad737be43ca"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.0/dist/DittoObjC.xcframework.zip",
            checksum: "8a8c55e46ddb3811c7afa7b49f1b390bce6e7c6f26bcee6f92c8838fa8e89b63"
        ),
    ]
)
