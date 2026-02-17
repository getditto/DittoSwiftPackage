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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-transports-android-module.1/dist/DittoSwift.xcframework.zip",
            checksum: "1b0b413a72fad7ebd31bd7440b36326d2ebc237a1cc3565a8675bd65eea138a9"
        )
    ]
)
