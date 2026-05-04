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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-experimental-conn-limit-meshlab-ipv4-cifix/dist/DittoSwift.xcframework.zip",
            checksum: "384a911f3c16ee52869ead8becd7a6f44d1e6932e0ea5eac784f670151ec2943"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-experimental-conn-limit-meshlab-ipv4-cifix/dist/DittoObjC.xcframework.zip",
            checksum: "6e6103a05eb234f77ae357ee3a74a50dcd627a2d45cbaca416906fbb4a6651ff"
        ),
    ]
)
