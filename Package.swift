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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.3/dist/DittoSwift.xcframework.zip",
            checksum: "2b7f4f8e070e38c9dc4674e98df78a76fb7e51999a1b2d6fc2f0a04d724ad567"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.3/dist/DittoObjC.xcframework.zip",
            checksum: "8fe1f61b739300ca8d7e3e0e99ce2ce76216a76c4eac5e711b91623385d07c29"
        ),
    ]
)
