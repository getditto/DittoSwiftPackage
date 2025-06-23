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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.5/dist/DittoSwift.xcframework.zip",
            checksum: "5b1a03758dff2ce09a2aba44bced6fb86c0cdd43ed1c07de8f92aa3aa9fb2232"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.5/dist/DittoObjC.xcframework.zip",
            checksum: "65b9a36b40daafd782b3281380366731de7c46bf32f46d69ec752e1a6ad28176"
        ),
    ]
)
