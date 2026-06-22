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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-preview.4/dist/DittoSwift.xcframework.zip",
            checksum: "ce6f5cdb6b9fb58748d528d908608f22cfc988aa4d905251bd5e38ec7ce1882f"
        )
    ]
)
