// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-catalysttvos-alpha3/dist/DittoSwift.xcframework.zip",
            checksum: "156b813bdc55bc49ed8c01628d94ec489cd0715c77215101492e8f6310f2e692"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-catalysttvos-alpha3/dist/DittoObjC.xcframework.zip",
            checksum: "afc47f2a5d56957cee33982f306821d5e61d63e47078c7c4c0fba67857f52828"
        ),
    ]
)
