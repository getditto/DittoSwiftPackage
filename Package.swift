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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.7/dist/DittoSwift.xcframework.zip",
            checksum: "c11303699dd4cc15f527b495656b5756914617017f4e1855b50c90fb4ae02c67"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.7/dist/DittoObjC.xcframework.zip",
            checksum: "1c90f2adc131c7681bc9ce42c38bd0fae2c07c380a48749f48121d353f7a0f0d"
        ),
    ]
)
