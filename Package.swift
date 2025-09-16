// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental.swift-6.2/dist/DittoSwift.xcframework.zip",
            checksum: "d9322613ef7bed54ad0e23b99b1e474682ed7212bfdcf45b8d0be71fdb23ed64"
        )
    ]
)
