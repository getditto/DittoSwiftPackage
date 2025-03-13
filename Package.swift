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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.0/dist/DittoSwift.xcframework.zip",
            checksum: "9b1e91ff8ce1cd4a10240fa0b692fcf479d81a4c9ef3f2aa2d32bbf822c71fba"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.0/dist/DittoObjC.xcframework.zip",
            checksum: "78a7745203ea3a258380336c6d93399538d2b444c2871a0f79114d19d0ba0998"
        ),
    ]
)
