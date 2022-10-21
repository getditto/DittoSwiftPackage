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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.8/dist/DittoSwift.xcframework.zip",
            checksum: "199a09c63fb71e7c7fc8c00cb2a5a756eee1258a9e2046d04306a84ffffe2beb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.8/dist/DittoObjC.xcframework.zip",
            checksum: "d1aa0dcd91209df73ffc5bd049d1bdaa8523b3f0067aa684cf895fdba79538f9"
        ),
    ]
)
