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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-experimental.bp-receive-timeout.6/dist/DittoSwift.xcframework.zip",
            checksum: "529dc1b9c2e10b1ec6a0e6f6991906ddf481a2e628ff04a4c34dbf01ae894366"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-experimental.bp-receive-timeout.6/dist/DittoObjC.xcframework.zip",
            checksum: "32aca9ea0415685ae0534a35cbadcf27a32a251290c96d6546260acfd9f6e941"
        ),
    ]
)
