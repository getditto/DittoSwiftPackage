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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.8/dist/DittoSwift.xcframework.zip",
            checksum: "4ba4f6781691518e8504c8a88cb7fb9a4f72bd7fad43e5991dfffbde233db084"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.8/dist/DittoObjC.xcframework.zip",
            checksum: "386772b343e45fd6caa95a974b644850ca326cfac08d42ff5fb2bee675dfc29c"
        ),
    ]
)
