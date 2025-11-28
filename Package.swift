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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.15.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "e4e1f14c9781e1389184c9f6892a69cdc514b0a7a7ac818de582181ac8c6daa6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.15.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "2706f23a1fb7a1868a03f2c39fdf6849e103331f2b470320d7d2752139eeff18"
        ),
    ]
)
