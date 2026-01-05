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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20260105.156/dist/DittoSwift.xcframework.zip",
            checksum: "12a5511ec7505f8a7ccada45328ef3f8a9c42c709090138dcb155c73524e3501"
        )
    ]
)
