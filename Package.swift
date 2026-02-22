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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260222.225/dist/DittoSwift.xcframework.zip",
            checksum: "b7e20a7464dc160a07d439fd5fecf17cfad269b2d60b956d92522608c7e43ce7"
        )
    ]
)
