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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "51eb99866acd800a355d1b4b5126513a88b0cea984b04741a4bffa0ebb68cdd5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.0-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "c0b69d72d83c443eeb08681e24a5955c6edc4277b52b680842a3d5786a832ff0"
        ),
    ]
)
