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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "b22982df1278ec320481660ae7369b59b183ba4ffb1b6ca25144fc7c7c5f4bdd"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "b08b601f248b3fc6e89c5e816d94753d5a0860e04702d7dfed90835f5936d0d7"
        ),
    ]
)
