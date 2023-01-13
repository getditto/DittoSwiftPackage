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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.0-alpha1/dist/DittoSwift.xcframework.zip",
            checksum: "1a3258caacd20b5a2c15021a78c16d384527c75b198b110182567940321eeb95"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.0-alpha1/dist/DittoObjC.xcframework.zip",
            checksum: "194115a18c7e973ca7c0771d820465cde98ece2b5b0a40a49a30d9d7b0d2d9f5"
        ),
    ]
)
