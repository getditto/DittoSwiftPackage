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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-experimental-visionos-support/dist/DittoSwift-dist.xcframework.zip",
            checksum: "628f1200e569dbe590f0d124c19ee224494121a486d7ecb0ee63b950dfec3500"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-experimental-visionos-support/dist/DittoObjC-dist.xcframework.zip",
            checksum: "8b03490992c96597a84a862269c2411d55ac210a5546a06eefe472036af5a767"
        ),
    ]
)
