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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "0b35f2ff810e3ce85d1b67d89d7b3815a83c424ceb26d9aaf907db884c6b3e6e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.1-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "749c122da31de12e0b416e927b7abcade3ec84b141e1598ebec626973afba606"
        ),
    ]
)
