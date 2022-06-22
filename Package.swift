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
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.10-experimental.all-product-headers-yaml-issue.1/dist/DittoSwift.xcframework.zip",
            checksum: "89e2a7bd08fcb7d8258a2fe7f68cac4d19b0465345ed9bc51e086dc182e28ea6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.10-experimental.all-product-headers-yaml-issue.1/dist/DittoObjC.xcframework.zip",
            checksum: "25ec3adeb4cb0fa006dfba487b413071c46c3775065459c81635219311c8df92"
        ),
    ]
)
