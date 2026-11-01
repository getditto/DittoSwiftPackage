// swift-tools-version: 6.2

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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-dev-weekly.20261101.3031/dist/DittoSwift.xcframework.zip",
            checksum: "81b3490bf3a5d744c1be5c3ae7c9d329d989e1784eb9a63f39717c9526cfd29d"
        )
    ]
)
