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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.8-experimental-gha-workflow.2/dist/DittoSwift.xcframework.zip",
            checksum: "d1bacfdd18e03aed84b1d3e8200ee3c5fd0f4a8ac8d72e5336b9161056bc72f2"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.8-experimental-gha-workflow.2/dist/DittoObjC.xcframework.zip",
            checksum: "8b3a7c8ce8ca76b2a37eb0b3cb96a27ee15e46cb10eafe0820c5cca4784025c8"
        ),
    ]
)
