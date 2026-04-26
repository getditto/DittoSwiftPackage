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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-experimental-conn-limit/dist/DittoSwift.xcframework.zip",
            checksum: "c8eba7789c69845b033ba16dbc05a844a7469060a48534d6a289abd605f68dbb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-experimental-conn-limit/dist/DittoObjC.xcframework.zip",
            checksum: "fa58bbcebebdd08982815edbed60a86e846904f6898baecf36396d971d2c95bb"
        ),
    ]
)
