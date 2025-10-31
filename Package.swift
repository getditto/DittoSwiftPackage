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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "991d3db7901573b09567a0738dfbcc8d8aafb07bad61453e785aa4ca881805a5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "197a6e622a83a092a74ac53a2077153b9941daa14954b23c51fa387ac7d7a59d"
        ),
    ]
)
