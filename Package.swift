// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DittoSwift",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoObjC", .exact("1.0.19")),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",

            // url: "https://software.ditto.live/cocoa/DittoSwift/1.0.19/dist/DittoSwift-dist.tar.gz",
            // checksum: 57a49ac2b63c8bb4d7e7cfc70145fa7f91d75649a8b5235fef5e0f858f1adbd3

            url: "https://github.com/phatblat/Ditto.swift/releases/download/1.0.19/DittoSwift.xcframework.zip",
            checksum: "93c65ae87fdd43eb1282bffc33047f543ba8e00d49fbf97bd4c5118be4d5d76b"
        )
    ]
)
