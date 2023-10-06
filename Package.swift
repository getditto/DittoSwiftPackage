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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.2/dist/DittoSwift.xcframework.zip",
            checksum: "ba4a442b965a41ef73c5ee58ecf21c93a5bbbdbed2cc0c92d43e8aefe41fdd24"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.2/dist/DittoObjC.xcframework.zip",
            checksum: "6bf046642bfa9a0581a369b7f000f08360a0a8998c2d3f99cb6b56d04dff32d6"
        ),
    ]
)
