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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental.kb-inline-objc-into-swift-sdk.3/dist/DittoSwift.xcframework.zip",
            checksum: "309ef212435b9314e9aa55287190cc88896fc3bd0b8b70ce9378b5e0e754d0f2"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "DittoObjC.xcframework.zip.url",
            checksum: "DittoObjC.xcframework.zip.checksum"
        ),
    ]
)
