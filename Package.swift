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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.5/dist/DittoSwift.xcframework.zip",
            checksum: "ed2fd1b39e701b3a2d381d889d05ef12a98ca1142934a8d2fea4beb9c40dbfc5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.5/dist/DittoObjC.xcframework.zip",
            checksum: "46b23f2bb2794cbe79d8c8689c45ea8d71b5971d60ef7b552a707174cb6b861b"
        ),
    ]
)
