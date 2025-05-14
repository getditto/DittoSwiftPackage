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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "3533289ef900f7823fb94c2e4618b23737a9031478d14a680f287265b9836b7d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "98766d2d1fc9eff03d4426d03d52f7b9502c37d5ef39f41b9213d79e8804812e"
        ),
    ]
)
