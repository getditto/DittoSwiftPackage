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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "786f50a7ed1e8ad16b8e460b5a56e538f1b1697740566e32eedd1977da1b8f27"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "9cdf6a1bbcf2013bd01ed69f1578c97212d5c688ae6fafaafea0f5b0a97f57dc"
        ),
    ]
)
