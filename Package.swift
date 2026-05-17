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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.8-preview.0/dist/DittoSwift.xcframework.zip",
            checksum: "811bd7b19c8fff795072d95f879401d893d1071ce4e6909e018eb819dab334dd"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.8-preview.0/dist/DittoObjC.xcframework.zip",
            checksum: "d271e91dc0fde2ff10add8a06859e45381fb3671c3a9f68b1fb6959effbb5847"
        ),
    ]
)
