// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.1/dist/DittoSwift.xcframework.zip",
            checksum: "a8998a1edb490f04da9baf1b3c1d3751ac9c95b180273db188f2c0db698688da"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.1/dist/DittoObjC.xcframework.zip",
            checksum: "c8c0884e5f606a48f9331c807f2f6b4b65145b9e92b9fb37c10d230367c008d4"
        ),
    ]
)
