// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-experimental-plcrashreporter/dist/DittoSwift.xcframework.zip",
            checksum: "0c5e780911e7caa22376f70d533f2a3e82151ecf744dfd40d9cb7fbebfb4436f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-experimental-plcrashreporter/dist/DittoObjC.xcframework.zip",
            checksum: "7afd743b01beb9df8c244ced9b5fb3a3c86145c25d0b6cb12df1ab40197bdb25"
        ),
    ]
)
