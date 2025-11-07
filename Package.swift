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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "766e50288667793c3ea9dd70dd3d1b64e65971dc4fe46a7edcf1d6a1dddbb410"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.0-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "227770b6dbb3868ccd73a99d6b8051ff8aa99a83c442b929c0675ac2d1d7b115"
        ),
    ]
)
