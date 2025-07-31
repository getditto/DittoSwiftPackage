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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-preview.2/dist/DittoSwift.xcframework.zip",
            checksum: "eccb12f9670f571ae2d39e1993275a66635d316d2ac26e8e6bd9a18eca64bdb8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-preview.2/dist/DittoObjC.xcframework.zip",
            checksum: "d79a974f3420c5fa616134b1bafcf09179ec833dc2c1ee6dbdd8e06ffe875578"
        ),
    ]
)
