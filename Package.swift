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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "f5c2d8f22c86354e98a763989dcf9c3bd23bb578bd8e283a0f45504d75ba26cf"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "a95b9f7a7d4fd06a5ec97a24ebb4c0ea499ff02b81403d51904902a5d64ea1eb"
        ),
    ]
)
