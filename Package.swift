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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-kotlin-internal-parallization.1/dist/DittoSwift.xcframework.zip",
            checksum: "e8a682f0f964391dbc5edbb917cca0b34d83895993f21c0db05001e8bee84190"
        )
    ]
)
