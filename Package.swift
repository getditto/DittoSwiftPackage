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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.9/dist/DittoSwift.xcframework.zip",
            checksum: "aade8d3c8029e3b41b2361504e2330edbe0fce68c36c93d965629a98c64765b1"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.9/dist/DittoObjC.xcframework.zip",
            checksum: "2bf650f57c4f4c887506685ae25dbe5fbe721b8bc19c5aa33bd9255d3e4be0b1"
        ),
    ]
)
