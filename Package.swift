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
            url: "https://github.com/getditto/DittoSwift/releases/download/1.1.1/DittoSwift.xcframework.zip",
            checksum: "0c4518ab8affb5b4e09c91f75ef46ab76c33be2735c52b16d4b58b189807e88b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoObjC/releases/download/1.1.1/DittoObjC.xcframework.zip",
            checksum: "8a4f656e05ab45b143b371e472f335d945fa6c03528d1904b575a36ca36114ee"
        ),
    ]
)
