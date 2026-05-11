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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-experimental-gha-workflow.5/dist/DittoSwift.xcframework.zip",
            checksum: "8a71e07053cf620732104ffc4b2a969836eb6ad6248fc42b24db5adb5f8ab956"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-experimental-gha-workflow.5/dist/DittoObjC.xcframework.zip",
            checksum: "626c0f25ca0ee9c2bc5b93cd43fdeb4007eee78783e8b799f55bea360ba6ac66"
        ),
    ]
)
