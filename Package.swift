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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.4-experimental-gha-workflow.1/dist/DittoSwift.xcframework.zip",
            checksum: "a5795f990606ee5b5934ca0dc81660d0e1c48207d04eacb4eeed2655f96e9fe8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.4-experimental-gha-workflow.1/dist/DittoObjC.xcframework.zip",
            checksum: "6aab8e543cb80c70776b5f0e0f33918a4cd501649bf9d3b99fb7e60164d40bfa"
        ),
    ]
)
