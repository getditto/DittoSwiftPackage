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
            path: "DittoSwift.xcframework"
        ),
        .binaryTarget(
            name: "DittoObjC",
            path: "DittoObjC.xcframework"
        ),
    ]
)
