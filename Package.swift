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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7-experimental-impr.1/dist/DittoSwift.xcframework.zip",
            checksum: "b8993644fc2b668c84496d3702bba4f6fecd563769736b454d55cc6b1c9dcd62"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7-experimental-impr.1/dist/DittoObjC.xcframework.zip",
            checksum: "3a2c82e2c35cc5fb3c110c4f1de4a9fe300bfa6ef8744476310ce4c3c9bfd234"
        ),
    ]
)
