// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.15.0-experimental-b6835ba.0/dist/DittoSwift.xcframework.zip",
            checksum: "c111c3671c721a0c92f3181e601954c6ee006fc0637913b1018997244b720294"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.15.0-experimental-b6835ba.0/dist/DittoObjC.xcframework.zip",
            checksum: "b2594a2ac2f701a354a26d81d51456f5eecf4198058add2107a384ecab8dbb56"
        ),
    ]
)
