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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.3/dist/DittoSwift.xcframework.zip",
            checksum: "ca401813595338af13c1e000cd38bc7d9d3298155fc796531ddeefb2eaf8cc3a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.3/dist/DittoObjC.xcframework.zip",
            checksum: "b4d1d4eb1b397fe948018a7abbdcef0f000bcaa6efcdac4ac42387d8e3720ccd"
        ),
    ]
)
