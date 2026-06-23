// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental-260623.1/dist/DittoSwift.xcframework.zip",
            checksum: "8869055cd8baa4f5240228c51ab8c774a91b8456224060508c8c7cc57ff5267d"
        )
    ]
)
