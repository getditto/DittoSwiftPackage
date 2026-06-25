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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "137bf1aa342071aa54ed7ddb23b4e5afa07b6bb44aaf5e2a6dae58a5234c394c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "6f4cf79f91ca926621a75dde9995dfa42cab962389fb2682d4e60a2cb34897e4"
        ),
    ]
)
