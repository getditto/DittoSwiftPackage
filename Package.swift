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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.5-alpha.1/dist/DittoSwift.xcframework.zip",
            checksum: "597ffef8557041a0d80ce3353d1d7325b36b34020bc8af10940a44e99e38908f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.5-alpha.1/dist/DittoObjC.xcframework.zip",
            checksum: "9356d3b6e0723f001c47dcc8d0532dfd9af2875f79e6324f730b127b6c2d55d3"
        ),
    ]
)
