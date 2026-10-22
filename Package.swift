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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "1d6beff832704b9120394673edb40f9964bbc6ae75f748fcfd2832b96c58492c"
        )
    ]
)
