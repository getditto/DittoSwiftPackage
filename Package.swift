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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.3-alpha2/dist/DittoSwift.xcframework.zip",
            checksum: "72f66c6d26072606c98a79b8e7168d72d3cd37adc5a2a3bf046e8ba0490b29e4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.3-alpha2/dist/DittoObjC.xcframework.zip",
            checksum: "fc32772697f61a0285c3144d9fd2df928bdb8263ebc25ba50734d5ff288d8ba9"
        ),
    ]
)
