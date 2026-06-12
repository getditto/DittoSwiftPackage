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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-preview.2/dist/DittoSwift.xcframework.zip",
            checksum: "2c65568a48629181b89029a5ea638fdc7efcb72759816f5eb8f61f2c8ac4dcb1"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-preview.2/dist/DittoObjC.xcframework.zip",
            checksum: "da5009a670f9fe655a5efc655818b3e300300e9b8d281a59066c9f9e1bce08ed"
        ),
    ]
)
