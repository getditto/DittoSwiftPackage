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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20251208.137/dist/DittoSwift.xcframework.zip",
            checksum: "fe4b144e8b7e6f658b7a75c8f26a987a478255783eb7755b219c559650588f73"
        )
    ]
)
