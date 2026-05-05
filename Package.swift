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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-preview.0/dist/DittoSwift.xcframework.zip",
            checksum: "4388fe1e6fe76e06b82c5f4f6be8e37df021713c2e368572b4d39e6a4bf402e6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-preview.0/dist/DittoObjC.xcframework.zip",
            checksum: "973ce46e4ce1c5ae4cd2b001908f445b3d5d9536b1a8a57d4dd884871c5f7df5"
        ),
    ]
)
