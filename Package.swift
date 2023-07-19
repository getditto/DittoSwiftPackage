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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.3.0/dist/DittoSwift.xcframework.zip",
            checksum: "ebf4e31d8538cca5765e0fdc938e19781235944c2370188418dc4811e2284a22"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.3.0/dist/DittoObjC.xcframework.zip",
            checksum: "19227374da9e39a78669e57d3fb64f1fe83ae1bdb5bc6b13c1d3df514358bdf3"
        ),
    ]
)
