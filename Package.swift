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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.4-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "59a5631eb2b0d7a03919de280a58dcc029043a9105810ab78bd39f19879998a4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.4-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "c94a4daf1897405d35dc9e90c68a0eee723a24796d9846ed5fc00bf26e7821ae"
        ),
    ]
)
