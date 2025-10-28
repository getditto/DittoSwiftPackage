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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "fb060f690c239ad5f0dd535a445030d92a789d59b758145c66d4377d2751d974"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "c8b54d5a931055ba1d0627c38cc2b38242ec7eb3dbbdcedccdbb0f7184bf390e"
        ),
    ]
)
