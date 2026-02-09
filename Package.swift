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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-preview.4/dist/DittoSwift.xcframework.zip",
            checksum: "f00fa1d9e9b2822bdba0feac6984a3a429ae8ae0f91e89699b0089853dab55b2"
        )
    ]
)
