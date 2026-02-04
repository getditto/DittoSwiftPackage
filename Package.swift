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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20260202.183/dist/DittoSwift.xcframework.zip",
            checksum: "7ec06e13e0fdbb21bdd7b748ab6a431c5761d99af55c8fc0d3f5075a37af2e15"
        )
    ]
)
