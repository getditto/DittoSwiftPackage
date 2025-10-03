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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.6-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "ac3fd63ffe7b6142cdf1b694e3edcde0b835df71980f4a0dcf446892890c48f5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.6-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "44823c06f1a041e2631d909ea293459ea1c078f3a745163ae76e33e3ff09e7f0"
        ),
    ]
)
