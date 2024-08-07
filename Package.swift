// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "5c1b1065a88fe93b073a71403b6e5bc8b30b8a906c29adcba42447d96f31ca60"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "d7853c07b7cbe3f2f11f2f2f157f948303062248b025d1b9e09d0d817f7d254f"
        ),
    ]
)
