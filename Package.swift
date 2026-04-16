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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "32296f1732d11ecd5b8b02c9b38bf6d5500d6cc5da280630ef5242b4925df237"
        )
    ]
)
