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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "7ed56a96dbe5837855ed0d72b2ff78f01b73c5965d4cb251295d0f6fb41c1996"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.1-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "c4640f7118496331e5cb574ac276f1f0f7057ed31e790b5510996e237028cabf"
        ),
    ]
)
