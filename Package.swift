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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "f435b991f80e05c3e56cc3627ea704bf81aad0a4f5a70ca8b1c049ed39c31a41"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "c6e5299f42a2b8acd8c80df790f9716d6121c3f7fd017b3e75171db7aa610be8"
        ),
    ]
)
