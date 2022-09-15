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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.6/dist/DittoSwift.xcframework.zip",
            checksum: "19c03618bc2cb0b866d08e596421ebe1441fa316209e413f084fe21c7439db09"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.6/dist/DittoObjC.xcframework.zip",
            checksum: "3a16dfb860981a5645967cddcc60742e37bd8ede105e1e65227c86768cbf91fe"
        ),
    ]
)
