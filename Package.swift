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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.5-experimental-internal-jj-ws-support.1/dist/DittoSwift.xcframework.zip",
            checksum: "df87407a00007fc2aa4c7e6ed0b4a4faa02d5a96d32cf5ae3fbced1cb9e9e0bd"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.5-experimental-internal-jj-ws-support.1/dist/DittoObjC.xcframework.zip",
            checksum: "7e1142b5fb6ac4e9d8f40435b9d038fdee94a85e3c3a21b1859f8818cc5dc88e"
        ),
    ]
)
