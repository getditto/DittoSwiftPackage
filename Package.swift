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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "3f72cbb0e5129308a2738c97876f85eeb201a80f1a721efd46dfc3bb64d717d2"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "de1692796782e8c2354747516b3d3ed3a659808706beaa1432a76c890c5be51c"
        ),
    ]
)
