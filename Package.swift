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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20260119.165/dist/DittoSwift.xcframework.zip",
            checksum: "13e130bfd78d6f1747a16b66a1f68269fd8799a9f012f89157966ffa3fe82d3d"
        )
    ]
)
