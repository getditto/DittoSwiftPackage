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
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.11/dist/DittoSwift.xcframework.zip",
            checksum: "cfb18b496b201304399ee3bf1a4eb95dd0c101a0a76a8e17acf09f1efc0e9a3c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.11/dist/DittoObjC.xcframework.zip",
            checksum: "831bab6741d87052b0ea3d48a220439765aa3cd770ee8c037a23bb5fc4cb8c3c"
        ),
    ]
)
