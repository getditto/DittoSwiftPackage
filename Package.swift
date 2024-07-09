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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.3/dist/DittoSwift.xcframework.zip",
            checksum: "70d4a8307fc099d6835b7a7c9e168140db2340e1d76f6cfe0024f8f39b98234f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.3/dist/DittoObjC.xcframework.zip",
            checksum: "2047a9a21e41e9ca982a0f87c2ae2da46629d31fc59f14010f211b1a3ecc4a7b"
        ),
    ]
)
