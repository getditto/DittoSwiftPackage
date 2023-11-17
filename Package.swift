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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.5/dist/DittoSwift.xcframework.zip",
            checksum: "6ec2d78d881d616531f85c04decbe6ab8cce198bbf8f87324001c4be107b1ac4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.5/dist/DittoObjC.xcframework.zip",
            checksum: "b1cd12d84455265cc8eb2321589a4b87a2ea5752228c04fe44d55f85209cf2e3"
        ),
    ]
)
