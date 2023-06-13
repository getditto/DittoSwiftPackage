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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.2.1/dist/DittoSwift.xcframework.zip",
            checksum: "f3d388339382e0d9a00412c5c15abf065c4992961c7177fea4c958f7549d3d4d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.2.1/dist/DittoObjC.xcframework.zip",
            checksum: "e05a827a4dd6ef658710a784336a3da14ddccd801a152db2853ea6a620c8acea"
        ),
    ]
)
