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
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.9-experimental.signing-issues.1/dist/DittoSwift.xcframework.zip",
            checksum: "d8b552a9e509f36f703b79d4c26689fcb34b26dc66b4cb2851e5de66d96d8dac"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.9-experimental.signing-issues.1/dist/DittoObjC.xcframework.zip",
            checksum: "df7ac1ff913038ffdb6c0f88b583a74d925aeb6ae2561906efb2b1ce0cdd8e5a"
        ),
    ]
)
