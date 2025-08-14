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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental.kb-inline-objc-into-swift-sdk.1/dist/DittoSwift.xcframework.zip",
            checksum: "7ab469c20aface32e06fee1a4fa1c01428ccfca7568b4e5b3cdfb61dff8088a7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "DittoObjC.xcframework.zip.url",
            checksum: "DittoObjC.xcframework.zip.checksum"
        ),
    ]
)
