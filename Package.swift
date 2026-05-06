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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-preview-1/dist/DittoSwift.xcframework.zip",
            checksum: "4a7b0e422af6f91d2ce9298861604de092471b2482f36461f45d6fed24b40f16"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-preview-1/dist/DittoObjC.xcframework.zip",
            checksum: "d732271df74c8dc4bc34b5a89b46e73cbcb97fa6e161e13d30776505fcc76771"
        ),
    ]
)
