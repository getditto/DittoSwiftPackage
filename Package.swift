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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.15.0-experimental-kotlin17.1/dist/DittoSwift.xcframework.zip",
            checksum: "d0eb4c127e44f172dd91ae90e4dec3f1caa579246d7fa25da803d88968451cfa"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.15.0-experimental-kotlin17.1/dist/DittoObjC.xcframework.zip",
            checksum: "0ee61f233a3962c74d77ae91f868ab0eb8327e92f952141ea70f29fec59e80d6"
        ),
    ]
)
