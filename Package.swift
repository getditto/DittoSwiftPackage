// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .visionOS(.v1),
    ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-visionos-beta.1/dist/DittoSwift-dist.xcframework.zip",
            checksum: "734f00cb15fc9043baec6230f1885eec61153191075bbcdbbd0fde8f8bc409d0"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-visionos-beta.1/dist/DittoObjC-dist.xcframework.zip",
            checksum: "eee904f013fef6d74a914536b69667bc601377aa39d6e2a7ad3b26c6919315a1"
        ),
    ]
)
