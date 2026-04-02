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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "5f8a2536aee7e1ed90b47029c8bf73bbc21f6a3ea0aa1e9a43daeb11a10d6537"
        )
    ]
)
