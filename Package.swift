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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7/dist/DittoSwift.xcframework.zip",
            checksum: "e41cc8d92f7e0d1d4d5b2d5d07030b5b2bef57ba1e423a00a2feaae76ab4879d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7/dist/DittoObjC.xcframework.zip",
            checksum: "77203e447ba569440924ccfbc8581f5a00c3a76518e7af5c7d2479d73afee0d1"
        ),
    ]
)
