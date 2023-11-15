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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0-alpha3/dist/DittoSwift.xcframework.zip",
            checksum: "836742223574b641c2074fabae0c61366d3d42492af3c7d7bffcb1f823564dc7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0-alpha3/dist/DittoObjC.xcframework.zip",
            checksum: "c952a0deabf3064e93a5bb774e233b539c396f09679179ea00397ce6f3b467bf"
        ),
    ]
)
