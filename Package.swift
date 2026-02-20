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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-preview.5/dist/DittoSwift.xcframework.zip",
            checksum: "28f58a52446b75d82f533f7f541024edc05b134b10cca42c06ff1e0a6dd36c2f"
        )
    ]
)
