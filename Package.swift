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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-docc.4/dist/DittoSwift.xcframework.zip",
            checksum: "834d0099e2aaf335bc9358d54aef25ca3900a0063ddefb37f16390df9e57a1a6"
        )
    ]
)
