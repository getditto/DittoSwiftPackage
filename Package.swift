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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.6-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "e7f6918cad04d7e7e70596b92d5f47bbd189a314bb66f542da3f73769749b13d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.6-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "d0cfa627ea6402653dcfef3743c1acc0a0e1f4bd6cb656adf80002ecc10d6df7"
        ),
    ]
)
