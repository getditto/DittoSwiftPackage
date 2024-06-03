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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.2-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "418c2cf5637db92058094af432598f1b0ae331f2c7efc587e1604b2fa1ea2436"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.2-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "730c91a502b026ed961f93fd75a21e4b3f2925d027ec955f03ac0bcc37065295"
        ),
    ]
)
