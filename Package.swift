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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.0-alpha1/dist/DittoSwift.xcframework.zip",
            checksum: "5824cb99d2c7a9dbbddda5e945d21f1e77660f08b7f2aea34a9528cdd323ebf4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.0-alpha1/dist/DittoObjC.xcframework.zip",
            checksum: "fab296895afbab86f4718f2076b22e2b2cb90849a7ce6163bfb7781183cd5f93"
        ),
    ]
)
