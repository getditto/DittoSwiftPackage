// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.2/dist/DittoSwift.xcframework.zip",
            checksum: "22d943e7eb8e66f85a6583048258bc9bf7d91e0beeca5cf265ecbd618e246e69"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.2/dist/DittoObjC.xcframework.zip",
            checksum: "a3818c6190ee4a310a3ae8a0df79785192fd313d91af21815309c54ac1a8ca44"
        ),
    ]
)
