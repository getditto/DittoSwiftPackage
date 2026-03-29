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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260329.258/dist/DittoSwift.xcframework.zip",
            checksum: "da2df5db0748222f28065574eb73c12bf9c6eace02f8b41f182bdcceff8f4a15"
        )
    ]
)
