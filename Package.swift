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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0-alpha.4/dist/DittoSwift.xcframework.zip",
            checksum: "7bff8981f766c0e1277f6870b3705fdd986c586556e42549d09d0b583ba13237"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0-alpha.4/dist/DittoObjC.xcframework.zip",
            checksum: "b8e8e0ff6a28f9678c318b07348015ad875df0da13fb27ff950fe36fa0a52346"
        ),
    ]
)
