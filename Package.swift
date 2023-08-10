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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.3.1/dist/DittoSwift.xcframework.zip",
            checksum: "1b81fbeac97465bb6d930060c63aae3231988af457d8e7c464eec2c800ca49d7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.3.1/dist/DittoObjC.xcframework.zip",
            checksum: "1d1dfffa17ff069ab02014b45d1ac7717830888827f4afc40226c520c4a782a1"
        ),
    ]
)
