// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-catalyst-alpha/dist/DittoSwift.xcframework.zip",
            checksum: "c86bc707259057974687ad9702321c8254733bb5bb2241c0491d22a7ea125c35"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-catalyst-alpha/dist/DittoObjC.xcframework.zip",
            checksum: "aed38c7cba37da989a682a7e4b047183250328b1904e6739bacf088ff1d3e388"
        ),
    ]
)
