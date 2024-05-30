// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-catalyst-alpha2/dist/DittoSwift.xcframework.zip",
            checksum: "4fd50e8891f024a803e4fa50bd839d6d035e71f1ac6eff823903877bdb0ba266"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-catalyst-alpha2/dist/DittoObjC.xcframework.zip",
            checksum: "c3a40b07effae4846e1995b3ec57ec83fd1edfd6925115974a098dfad9e40967"
        ),
    ]
)
