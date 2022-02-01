// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DittoSwift",
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
            url: "https://github.com/getditto/DittoSwift/releases/download/1.0.19/DittoSwift.xcframework.zip",
            checksum: "93c65ae87fdd43eb1282bffc33047f543ba8e00d49fbf97bd4c5118be4d5d76b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoObjC/releases/download/1.0.19/DittoObjC.xcframework.zip",
            checksum: "08526a7e68415e2499674d171fd929e6c8cf3571581a8e7d7619d735e7612770"
        ),
    ]
)
