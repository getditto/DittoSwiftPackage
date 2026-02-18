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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.3-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "09a25d3d8465ce8c5aacc0946cd72b5352319c5a423bd756ad64ff442736efcb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.3-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "c2f0b890a821c43117591328001a1263a94783b95d75a2fd1d2b87d6606283cb"
        ),
    ]
)
