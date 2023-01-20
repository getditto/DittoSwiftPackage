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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.2/dist/DittoSwift.xcframework.zip",
            checksum: "a28ca06aebc69706680becd28353d4c5405ed9d4656a7f522c4ecc6e611cabb5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.2/dist/DittoObjC.xcframework.zip",
            checksum: "41cd3d81da70cc94ccc644b08e2ddac88e04f15db005474d43e0433607c15b26"
        ),
    ]
)
