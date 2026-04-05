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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260405.263/dist/DittoSwift.xcframework.zip",
            checksum: "4c31b60e92c8f8e99059663f994a87da652a4d87126409e9011ed901a6a02699"
        )
    ]
)
