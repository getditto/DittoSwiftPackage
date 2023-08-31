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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.0/dist/DittoSwift.xcframework.zip",
            checksum: "15c2fb60d3af029cdb06fccdcd7f200c9c7b84a5568be30a93bbd958d661f547"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.0/dist/DittoObjC.xcframework.zip",
            checksum: "92b5a68e2b4de62930fbfeec83b012a80a1fb2a0430bc5eac88313a8789a0da6"
        ),
    ]
)
