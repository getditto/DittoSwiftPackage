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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.5-experimental-gha-workflow.1/dist/DittoSwift.xcframework.zip",
            checksum: "afdbca95f48c0fae33c028aa9dd1a505954e341f6eaeaa2055948ed610090a9d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.5-experimental-gha-workflow.1/dist/DittoObjC.xcframework.zip",
            checksum: "cc7f91124a6e2ba7d105643112a3a21fb100e9e790f3d7edf7d827fa6de997f2"
        ),
    ]
)
