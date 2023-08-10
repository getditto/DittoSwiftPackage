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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.11/dist/DittoSwift.xcframework.zip",
            checksum: "c11f875221aca0fdd14dafdb164572bc32a2ef2611b55936784fbfe1d819a47a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.11/dist/DittoObjC.xcframework.zip",
            checksum: "99cdfa3e7e2fe2ed24dd15cf40f73c535616fc0bbf7d4489ea5e769e961387bd"
        ),
    ]
)
