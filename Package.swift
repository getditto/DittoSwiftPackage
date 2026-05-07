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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-experimental-gha-workflow-kotlin-only.1/dist/DittoSwift.xcframework.zip",
            checksum: "133aad9a88c41f035bc009e03f3d3597aef5f399ab4fad84d40e6813ac865943"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-experimental-gha-workflow-kotlin-only.1/dist/DittoObjC.xcframework.zip",
            checksum: "61fb3a7e006fd7d670a0145b53d8081cd2a708a72581d43fefc5c26d4e94b285"
        ),
    ]
)
