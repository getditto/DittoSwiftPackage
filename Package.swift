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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-experimental-js-persistence-directory.1/dist/DittoSwift.xcframework.zip",
            checksum: "9e9bd97ab31d786f1bbca5d081eedaba756f4d6592a339ed5c41975952f2dc19"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-experimental-js-persistence-directory.1/dist/DittoObjC.xcframework.zip",
            checksum: "24a6a125f4dc65a3f0157fb311ae55ebef57acaa8c7290753fcd3f46ef2615dc"
        ),
    ]
)
