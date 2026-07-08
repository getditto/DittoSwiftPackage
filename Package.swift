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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7-experimental.preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "b9d2d9000b0f2b78e3361f5440dc61f9ca448f485e8a42006a4e7414fb2cf66f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7-experimental.preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "bc5dda163eada4421ba147957b0ae7cb4b6f5a5b925db9c72f668d191140af21"
        ),
    ]
)
