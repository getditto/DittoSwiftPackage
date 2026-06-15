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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "96cf5ee1fd3cd9ff346f1541caf724f2d9d7513a1cbc7d1d060830cfa1e0e199"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "dad8c2602aa9d863776e0d6eb593c1a67d6462c45ae25f8f165b2b2fde53c11e"
        ),
    ]
)
