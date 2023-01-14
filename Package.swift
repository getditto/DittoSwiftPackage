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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.1/dist/DittoSwift.xcframework.zip",
            checksum: "a72ccf5d931677c14ae815aaf4a6e8bade665f0c98c62b2e545113bee2267f9c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.1/dist/DittoObjC.xcframework.zip",
            checksum: "9383e1d2698f780b4d0a095ee65d8083736e92b95a8c961400f6330dab220e86"
        ),
    ]
)
