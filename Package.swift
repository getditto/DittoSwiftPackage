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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.7-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "1492d222bab0d14753e8a50bb0e81ee1e0137b24bfd10e4feffe200a37836f33"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.7-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "e8331de720f44f376873a5d28450a41b68b3ef456edd673e6fb5dba4d06c1664"
        ),
    ]
)
