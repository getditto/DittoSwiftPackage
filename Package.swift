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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "9a9bdd141f877046bd41d22506dbdf7856809c745406cf430c5c4802d98e00ae"
        )
    ]
)
