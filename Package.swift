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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.3-vori-i614/dist/DittoSwift.xcframework.zip",
            checksum: "d8e1f09ae10727129265403319e5cf9e6bd041f9ba16f68561ee9af37fe90e44"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.3-vori-i614/dist/DittoObjC.xcframework.zip",
            checksum: "909bf7f0297da9b1a93c90d86dbee2477a06bde8cc6a9899a165d84b4783393f"
        ),
    ]
)
