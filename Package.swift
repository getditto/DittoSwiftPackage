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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-transports-android-module.7/dist/DittoSwift.xcframework.zip",
            checksum: "0ce6b8a50e1cba4d42dd60c68b0f458baec2786eb50a8ea72f6b0b8adbec7708"
        )
    ]
)
