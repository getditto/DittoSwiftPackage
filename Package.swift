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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "12e31b660f5cf1a5e5e889f2f5880f7983b044e0a66396c0d0c0413746c5af4e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "7fc248616f56703bc22726341cf4960864ee67136d248fb26b9e7ff5be271ca2"
        ),
    ]
)
