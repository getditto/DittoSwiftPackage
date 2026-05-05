// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0/dist/DittoSwift.xcframework.zip",
            checksum: "11f5acb4120e4755ef6bda6cdb9740f3a75b4fb4bf2bd509851f2e8226862d64"
        )
    ]
)
