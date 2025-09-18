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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-experimental.bp-receive-timeout.4/dist/DittoSwift.xcframework.zip",
            checksum: "020f131c9fe56d71c8a86f43ae1a0d74451b0232fc44e739fbbf6bf3a8ea6c1d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-experimental.bp-receive-timeout.4/dist/DittoObjC.xcframework.zip",
            checksum: "7b272eae2f395c687d040a920245da41b025bd82158e6660c189f19feb37f32f"
        ),
    ]
)
