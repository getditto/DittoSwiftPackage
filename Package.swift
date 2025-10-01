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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-experimental.bp-receive-timeout.5/dist/DittoSwift.xcframework.zip",
            checksum: "d800e3e1e02ef84afd5f225a22e562201ed877511782505987120f7d17f73f96"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-experimental.bp-receive-timeout.5/dist/DittoObjC.xcframework.zip",
            checksum: "51bfd616a076ab3428a7b8f14672eab48a30aa40f6e8b51fd51ee8548a173874"
        ),
    ]
)
