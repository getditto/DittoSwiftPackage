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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/3.0.3-alpha1/DittoSwift.xcframework.zip",
            checksum: "7794188a46f2ad74cabdf2731ccb7d587df7f6a5350e4688c16a6a4d22e18edb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/3.0.3-alpha1/DittoObjC.xcframework.zip",
            checksum: "c00cd58b243ae97b417ad5223ed5285bc356ad210228fa0dbc8edb2e69ab9c0e"
        ),
    ]
)
