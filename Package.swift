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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.7/DittoSwift.xcframework.zip",
            checksum: "669194f2ae026f3315ea76f2022c9a0d9e21209ffb49b1f43941707537f382a9"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.7/DittoObjC.xcframework.zip",
            checksum: "6b5b4b4681f5471ec0fede71bfbb4f1a421f61e61d4e93480f42c69102d8775b"
        ),
    ]
)
