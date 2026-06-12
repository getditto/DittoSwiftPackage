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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "70a65d569c4a70cf0d186b99f5b1bf34d96595db05a6434c1936379306d7bdd8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "1166812e9e89533d11724ab22f0f52be492f20e4d752fa2abe443ddd6b78a95e"
        ),
    ]
)
