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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.5-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "ea57ca7e50b4d17b5f8e95688e5e9c615e7e114fb3db20556e954351c7035a18"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.5-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "65e69cb4c40154d47b8ccdd21d022e0d9b1f85e160928bcbcdd0066104c36f8b"
        ),
    ]
)
