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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-experimental.local.1/dist/DittoSwift.xcframework.zip",
            checksum: "c3e6f07e05b483828a5b6b1b7d53092291b691584df241fd0e1c0c21a5ce79e5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-experimental.local.1/dist/DittoObjC.xcframework.zip",
            checksum: "23e440aa996133f749b1a4d6164f184bb219ea9789c5d08bcf42f767b6917d18"
        ),
    ]
)
