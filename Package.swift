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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-separate-c-and-objc-code-again.2/dist/DittoSwift.xcframework.zip",
            checksum: "776d97f330c022b61c51d339ebb76530cd7bdac7b954a4d95ab5faa62fbf820a"
        )
    ]
)
