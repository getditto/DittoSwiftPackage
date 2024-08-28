// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "b10f4ecf29eaaab07967e4d8e3a3380b1a6416fa09e46e979d7ac36bf2506f60"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "d2fb517d39dd45956162afa921fb32261ea756a507baec303cfa1f47e5956a15"
        ),
    ]
)
