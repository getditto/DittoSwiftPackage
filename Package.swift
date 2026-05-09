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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-conn-limit.1/dist/DittoSwift.xcframework.zip",
            checksum: "e34ba0097dbf56c8bc3c8287a538404708f4e8eb7c3d06bbeeeb249cd91b74d0"
        )
    ]
)
