// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "14e467144dc87b81ba8758187785f62a669f6ee81fc0afb774bc3a10ef084097"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "abb84262bec32972136687998df3f0e1ddea38717a8e17c6bc22c9e40757582e"
        ),
    ]
)
