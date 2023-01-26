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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.3/dist/DittoSwift.xcframework.zip",
            checksum: "4ef91ee88dde749d285b9af666535eb742f7c1bd45899213b579c88bbe237293"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.3/dist/DittoObjC.xcframework.zip",
            checksum: "6f7903adb64395cd72b85ecefa095f2fdf1bf4a8fe96d90db14fef983a0abeb4"
        ),
    ]
)
