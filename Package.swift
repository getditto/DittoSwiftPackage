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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-experimental-untangle.0/dist/DittoSwift.xcframework.zip",
            checksum: "efc1d2125da448dbb64b03e856c1d350317ec77c3b3b169f4d109efa56ba2eea"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-experimental-untangle.0/dist/DittoObjC.xcframework.zip",
            checksum: "f595181c5b83fd585d19f5a848d0ba12716dc32d5e347cb6331b72d96fb11458"
        ),
    ]
)
