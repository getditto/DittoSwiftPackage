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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.8/DittoSwift.xcframework.zip",
            checksum: "994da2efe63541c6d282a11b57c2681eb5ee134fc50513a7794710e5ced26814"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.8/DittoObjC.xcframework.zip",
            checksum: "95afe859bd423f108e26917e89f8e512695814e95ec3c99038fb93b8a0fb42fa"
        ),
    ]
)
