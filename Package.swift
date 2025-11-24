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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-swift-remove-support-for-cocoapods.1/dist/DittoSwift.xcframework.zip",
            checksum: "19d84521c13ef3b543bd9fbbabff7fd864f5d2e4a58b20c9cbb82ad4109daf2e"
        )
    ]
)
