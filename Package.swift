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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "6c5d6aae283a9c9cae6d6a38705974cdabaa62abc51edab2305ae258f812ec27"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.0-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "9f9389d0e869c905da97fbb6e471ccc216cb5dda63e1e8e928518a4d4b41734f"
        ),
    ]
)
