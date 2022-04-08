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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.4/DittoSwift.xcframework.zip",
            checksum: "a7d98951672fbd5cae1a81ed14b766ba884a29ddd43d11a71a306a01ef4df0fa"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.4/DittoObjC.xcframework.zip",
            checksum: "5f2ccbdb144b4de8584d70af5db1f2a2c862d48013bbc079fd2582ec27654605"
        ),
    ]
)
