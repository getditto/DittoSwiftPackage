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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-release-gate.2/dist/DittoSwift.xcframework.zip",
            checksum: "62ca91bdde00a2d3ab28f7b02df19990835a92fd3faaba2b62c50c78cff3c8d0"
        )
    ]
)
