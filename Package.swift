// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DittoSwift",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoObjC", .exact("1.1.0")),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://github.com/getditto/DittoSwift/releases/download/1.1.0/DittoSwift.xcframework.zip",
            checksum: "18ea89247e58cc0b279929a8ad472dac306b96c007d81ed25b6d1b5bc75f4c23"
        )
    ]
)
