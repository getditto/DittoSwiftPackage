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
            url: "https://software.ditto.live/cocoa/DittoSwift/ckage-publish-4.1/dist/DittoSwift.xcframework.zip",
            checksum: "2a3053c28b7f4392e4d216c511407672f4863f36a056a71fea47a5db33b17877"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/ckage-publish-4.1/dist/DittoObjC.xcframework.zip",
            checksum: "97c6017afdd037a3f14655a3705ef7531e6d4d18a65aabc0438da7c67c1ca76e"
        ),
    ]
)
