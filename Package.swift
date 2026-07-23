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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-preview.11/dist/DittoSwift.xcframework.zip",
            checksum: "4e51ec3ab519fc8d8eaaa7489faf7e34cd96cc927161ac192f8891b99646f74c"
        )
    ]
)
