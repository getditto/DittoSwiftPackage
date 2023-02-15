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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.4-experimental.ditto-core-data.1/dist/DittoSwift.xcframework.zip",
            checksum: "3e4109b6fe3156a33ac131f0f203d0f6891d2a344e4f8c7eee7292b76f7992ad"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.4-experimental.ditto-core-data.1/dist/DittoObjC.xcframework.zip",
            checksum: "02c72ec28b70770012d70994a6583834ec00ea0ab36019cb841d632b319a1cf4"
        ),
    ]
)
