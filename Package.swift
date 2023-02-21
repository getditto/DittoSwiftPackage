// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.5/dist/DittoSwift.xcframework.zip",
            checksum: "007f3d582658145dd3a5d65a9f77997b3f34e4b0bad44234a852a96b9c18b7ba"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.5/dist/DittoObjC.xcframework.zip",
            checksum: "05368f24a023a1b0e035ab7d54a0e06712098a892070b89dcf61bb5d97467baa"
        ),
    ]
)
