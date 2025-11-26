// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-separate-c-and-objc-code-again.1/dist/DittoSwift.xcframework.zip",
            checksum: "8143b421b9f060731065e9350488ba959a8ac614a679a13a6fd73c29e668e266"
        )
    ]
)
