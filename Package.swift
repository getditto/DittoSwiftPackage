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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.15.0-experimental-rkyv-20251215-1/dist/DittoSwift.xcframework.zip",
            checksum: "4af3ab1efa922aa559a759fba217af238fcbfde1310d2e14637192e545573eef"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.15.0-experimental-rkyv-20251215-1/dist/DittoObjC.xcframework.zip",
            checksum: "dc64a8eeb78d073f1d6577f82a656daeed37078a3b7e9ac0c41deb150ca34b09"
        ),
    ]
)
