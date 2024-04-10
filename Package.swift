// swift-tools-version:5.10

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [
        .iOS(.v14),
        .macOS(.v11),
        .visionOS(.v1),
    ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.1/dist/DittoSwift.xcframework.zip",
            checksum: "37ee1b0cc02ecbe00cdeba3d788b7b37e025ae9217429423232ae47f4ef3413e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.1/dist/DittoObjC.xcframework.zip",
            checksum: "895152e94097debf1f27fcd16cfcd850eba481196a1904adcdf72b292a2361a1"
        ),
    ]
)
