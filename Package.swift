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
            url: "https://github.com/getditto/DittoSwift/releases/download/1.1.0/DittoSwift.xcframework.zip",
            checksum: "18ea89247e58cc0b279929a8ad472dac306b96c007d81ed25b6d1b5bc75f4c23"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoObjC/releases/download/1.1.1/DittoObjC.xcframework.zip",
            checksum: "8a4f656e05ab45b143b371e472f335d945fa6c03528d1904b575a36ca36114ee"
        ),
    ]
)
