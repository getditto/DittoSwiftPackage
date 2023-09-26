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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.1/dist/DittoSwift.xcframework.zip",
            checksum: "3aae73df810bf35523726b6c58c33c543f185aaaf3d98c9559621cf0372a6491"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.1/dist/DittoObjC.xcframework.zip",
            checksum: "dd7b41d7c4fa90a88758b737512c2a1366d7c53c79b655fa3f1f76007d9851b3"
        ),
    ]
)
