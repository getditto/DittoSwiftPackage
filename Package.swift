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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0/dist/DittoSwift.xcframework.zip",
            checksum: "a26ba4c060972574c74a578d909b6223d6b43d445a8d3697fa0b5c493f458b4f"
        )
    ]
)
