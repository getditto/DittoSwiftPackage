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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-rc.4/dist/DittoSwift.xcframework.zip",
            checksum: "a6ff4f8e645cac4432dac60bfda90d1d4d7d11f567b8452605c9d0b2fe969f97"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-rc.4/dist/DittoObjC.xcframework.zip",
            checksum: "a0240e660870baf0f680863a7adc7ab21976cd9eeb675b2846ab8bdc2cd845af"
        ),
    ]
)
