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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.2.3/dist/DittoSwift.xcframework.zip",
            checksum: "ce4528151a246dd98a8ad35fabbf90af2b7c8313262ae4412daf72bd20b770cf"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.2.3/dist/DittoObjC.xcframework.zip",
            checksum: "065d31dfa0f31ffe8b938d06bce1f1cfda280240f9f45642c66ed915a2f35e20"
        ),
    ]
)
