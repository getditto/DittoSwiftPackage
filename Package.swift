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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.4/dist/DittoSwift.xcframework.zip",
            checksum: "255c792003af6c65c26324417d98fe397f7dce1bac3a02487f9c3b5b4a2153e7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.4/dist/DittoObjC.xcframework.zip",
            checksum: "d0cce8d0927574b8cd3d7caeb5083ea5ff4fba99ab3b248ede2fd62f225eeaf9"
        ),
    ]
)
