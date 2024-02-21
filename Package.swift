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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.4/dist/DittoSwift.xcframework.zip",
            checksum: "7463a30591c9db2ca6ae37e74c4d2d2a5b19f812b29a1ce52fc54e90f5297442"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.4/dist/DittoObjC.xcframework.zip",
            checksum: "d34100e7f755ee61161a3f3d048113ffd8289ba41f552807c61c60853064fecc"
        ),
    ]
)
