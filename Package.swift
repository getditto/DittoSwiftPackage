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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.0/dist/DittoSwift.xcframework.zip",
            checksum: "60f0d973c51deafb07884fddda3e9aa3f10a918f291d2a5423c5f11c597772ec"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.0/dist/DittoObjC.xcframework.zip",
            checksum: "0fa0ce1e7f91143fb90ec72186e184b4b96840b79dd8b6f9ca9152e966b622a3"
        ),
    ]
)
