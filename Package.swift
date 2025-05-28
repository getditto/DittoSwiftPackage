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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "b7f5d7670101aaf2c61bb23bfd6eefa33eca47f99a09f4dd47863de436feea8b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "2583453ad1464eaefab8d3ba07294dceddc6182553f4d60372b11532a15a141e"
        ),
    ]
)
