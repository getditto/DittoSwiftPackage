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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "ab423c18c88e9f680b06056d8d7c4330a5c57bc0b2dd40b244778ea70ca1f6d4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "ce176315aa98f0ba81a0b1d3e05b7ff8e2bfaf31600f1b484454c7a831be3c63"
        ),
    ]
)
