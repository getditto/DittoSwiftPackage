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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.1-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "5edc0fd4271e7105f2257d42339e30b488d93f6b041b5e9b42f98c4c31b2ec01"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.1-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "487b55c8a55bb4f942dc89e1caeb1572254a8ff965544528a248c4fd7ff7b2c5"
        ),
    ]
)
