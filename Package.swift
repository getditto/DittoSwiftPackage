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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "86c5214c41af87c27d6d2ad68dbd8f20f1c70318aec932744da7aacea0425394"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "169e17f093e6549ab2ac582ebbcd2e37786d5b0c45195063b7778f68189d5baf"
        ),
    ]
)
