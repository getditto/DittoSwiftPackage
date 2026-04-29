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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-experimental-gha-workflow.3/dist/DittoSwift.xcframework.zip",
            checksum: "151e304023bb11460e23efb89587b12192ba6b0e67043a39e678e8b14fe5cf79"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-experimental-gha-workflow.3/dist/DittoObjC.xcframework.zip",
            checksum: "327543eade221fcc2d420bd7d3e29ab9a85b98486d0ead35497ecb31f39af23b"
        ),
    ]
)
