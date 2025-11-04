// swift-tools-version:5.8.1

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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-gha-sdk-publish.2/dist/DittoSwift.xcframework.zip",
            checksum: "261b2a08a7eb2f532f743606c19643a53877dc3b9149b2a7d5015025f48d3be5"
        )
    ]
)
