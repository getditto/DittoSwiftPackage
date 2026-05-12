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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-experimental-flutter-puro-upgrade.1/dist/DittoSwift.xcframework.zip",
            checksum: "74d6c12d4f875b5fdbc4430ac4902d1a6a8d88fa0107395ae7d51b3400139a1d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-experimental-flutter-puro-upgrade.1/dist/DittoObjC.xcframework.zip",
            checksum: "975b9919f218a5e34cd6ed895646fb442fdc89a13ef32edde9149aa3f4509ef2"
        ),
    ]
)
