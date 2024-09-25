// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.2/dist/DittoSwift.xcframework.zip",
            checksum: "f3ae2a2c780ad89c595398e5dda5c3c419585a9a8681b8b2801acde8ef4c0429"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.2/dist/DittoObjC.xcframework.zip",
            checksum: "b1a7471484a2f66e2d046a296cb5cb377b10dc781e6471d2c85bcaa63b1c108c"
        ),
    ]
)
