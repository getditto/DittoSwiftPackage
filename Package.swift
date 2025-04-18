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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.2-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "8ae2ef30c89c4b610ced63a741026701dd5a6864cbeadf9da9a6cd6f1a19de3e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.2-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "aaaa2c9e25ffcf9c10c115cb79320a89b1a2091d67d1443747c9c3877800a864"
        ),
    ]
)
