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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-preview.3/dist/DittoSwift.xcframework.zip",
            checksum: "c154e535a3b5341b26072874182ba10c51507fd1534d3b7ca5b2a29b4f455674"
        )
    ]
)
