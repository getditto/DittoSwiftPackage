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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.3/DittoSwift.xcframework.zip",
            checksum: "dd99fe30b7ff984a879e50c6f57a0a0f49448541562c015b2f6e48841705687c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.3/DittoObjC.xcframework.zip",
            checksum: "cc200ccfd103bd8893ba23d800d9c9c39347b69e5bd021aa233e31345d2a7afa"
        ),
    ]
)
