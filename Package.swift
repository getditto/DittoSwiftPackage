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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "f4c70bac71bd04127cf411b5e93de9eb29cd6dc340827d594cd3728bbd865fe7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "cc4df758d45c761b6ff70cba8c23f5c4bde42ece05a469bd1d46f1286925b55f"
        ),
    ]
)
