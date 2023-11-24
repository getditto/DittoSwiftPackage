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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0-alpha.5/dist/DittoSwift.xcframework.zip",
            checksum: "7a81a08d5dfa976a894b4da030e4f46e11c7fc1e9710f8480ee2f462603fc6dc"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0-alpha.5/dist/DittoObjC.xcframework.zip",
            checksum: "ab6deaa418449fc629fb5722d3d2cbb47e4a6ca03377766b8183c0f88116c665"
        ),
    ]
)
