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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260412.275/dist/DittoSwift.xcframework.zip",
            checksum: "5bc31158648b94dd1a074778cc2b68cfc25602ecb68534748fffd568fee2279b"
        )
    ]
)
