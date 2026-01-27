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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.3-experimental-vori-2/dist/DittoSwift.xcframework.zip",
            checksum: "ceefdf7a518246fd0f28ddc6300c656e2e87b56eafdfe17701b266106747922a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.3-experimental-vori-2/dist/DittoObjC.xcframework.zip",
            checksum: "b4922be5a9e16e70ed75ac7acc29b264b5c82bf90b76d5378ef0349c85a280f2"
        ),
    ]
)
