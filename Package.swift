// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.4/dist/DittoSwift.xcframework.zip",
            checksum: "d14624e9e58318346aeb887c4920a5cd7e49e579eee80d1c777bbb1182754fb4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.4/dist/DittoObjC.xcframework.zip",
            checksum: "ec0f81be45072df6be23f553d9b6af59422cb6c57ad4c311591c276cbac93d6c"
        ),
    ]
)
