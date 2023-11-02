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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.4/dist/DittoSwift.xcframework.zip",
            checksum: "d0f2920a4c5e12f3c19e98a84e6ce9bc4a791011e294affb6a0435496509f4d8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.4/dist/DittoObjC.xcframework.zip",
            checksum: "43bdd7616a8e52a049d0ad20c7241f541fb9c1b02df4a43875ded55ab333ce17"
        ),
    ]
)
