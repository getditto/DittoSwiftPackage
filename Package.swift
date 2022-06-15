// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.9-experimental.swift-pm-tinkering.1/dist/DittoSwift.xcframework.zip",
            checksum: "2608e82a91298911e7dbfbcd0dfbd2e948e0366b3df19e440f013623a4ec8f74"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.9-experimental.swift-pm-tinkering.1/dist/DittoObjC.xcframework.zip",
            checksum: "93220a382931a8bbd361701e60a6e062b64a9a701c8193c1ec6cdb1502fe17c9"
        ),
    ]
)
