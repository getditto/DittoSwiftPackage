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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.8-experimental-gha-workflow.1/dist/DittoSwift.xcframework.zip",
            checksum: "67b6d3d7ba2fd9206430d04891d46824af9a359bf1512ce7f2c2799f1ff23b45"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.8-experimental-gha-workflow.1/dist/DittoObjC.xcframework.zip",
            checksum: "d36bbbda1868c742a8f871f1395548ab97f7bf57db27e50fcba5860c2c52125c"
        ),
    ]
)
