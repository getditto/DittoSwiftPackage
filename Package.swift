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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-preview.10/dist/DittoSwift.xcframework.zip",
            checksum: "4116ac187e74b6ed5ad73730f27c9b142cfbdbffd15e4619fb486c12afc19f37"
        )
    ]
)
