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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.2-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "3b67b746ad6afd0010c185563d89d47d4db01e2707b6857d22c292bea599b582"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.2-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "4f479b7c4ef949e3da7fbc62a64b261b91ced8ad39d03d71cf0d806806ab903a"
        ),
    ]
)
