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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.4-preview.2/dist/DittoSwift.xcframework.zip",
            checksum: "38a25642e1ef65140f27811fcc34a4560bed2e9ade300accf68c4a7015054bd9"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.4-preview.2/dist/DittoObjC.xcframework.zip",
            checksum: "c062a43eeb0c566c97d9ce50b6d42df0c2624a6b3705f6846de8b12cfb61f264"
        ),
    ]
)
