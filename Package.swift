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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-preview.3/dist/DittoSwift.xcframework.zip",
            checksum: "1948d7fe1e4e58abd4b53ef0e0e4a5f58b0b3e3dd0ef0bfc2a1224e2f7c45364"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-preview.3/dist/DittoObjC.xcframework.zip",
            checksum: "b13247022a53c4d263109e273bc4ac6d53a663469ca0076c6f0d0f1dba0a213b"
        ),
    ]
)
