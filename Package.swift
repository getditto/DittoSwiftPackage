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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.2-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "9032292cc3643f1ef7ad6667f09f2b318b7447b577b11da87fb4a30e6a3109a3"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.2-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "03c0a5e4b362e598811e4bfac3847eb50d35be5da6a77a19ef5c0be52e127604"
        ),
    ]
)
