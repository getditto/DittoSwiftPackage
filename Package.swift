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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "6ad313f42eb55498b5e9aa55fc6dab5df380895272d19ab810276f5ea9ad9cc1"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "c06900e6d036415a19cbb26f067720098566ee8a08b236787cacd6b35cff8763"
        ),
    ]
)
