// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwiftWrapper"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .target(
            name: "DittoSwiftWrapper",
            dependencies: [
                .target(name: "DittoSwift"),
                .target(name: "DittoObjC"),
            ]
        ),
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.0-alpha.1/dist/DittoSwift.xcframework.zip",
            checksum: "6a174d2dfe84cc5ce9e9bbf5644df699c195749c4c1e3690393d9c08c8a36ac5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.0-alpha.1/dist/DittoObjC.xcframework.zip",
            checksum: "9342b02c7b7d1ed673adae30da35acebd9b58bcc41832e1af68ade41e6ea4da1"
        ),
    ]
)
