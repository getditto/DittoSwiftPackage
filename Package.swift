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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "5e1f211b534df55918d2659da0991c733dfe4f91efd13f4a5ee3ddaa530c9af6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "f5d42969ad743861dfe8543dfe17c52184e5eb8f6a6f5bae1b7425abc158036f"
        ),
    ]
)
