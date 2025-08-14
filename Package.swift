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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental.kb-inline-objc-into-swift-sdk.2/dist/DittoSwift.xcframework.zip",
            checksum: "c8b17aa6234a7bf265c062e1083ffaef8266025e5723d70577dcd1682ff57bf8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "DittoObjC.xcframework.zip.url",
            checksum: "DittoObjC.xcframework.zip.checksum"
        ),
    ]
)
