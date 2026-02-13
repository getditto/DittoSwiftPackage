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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-all-sdks.3/dist/DittoSwift.xcframework.zip",
            checksum: "a90d7a1e73d3814a844406d4b77b8361bbf1a09d383adcf39a9b0356476630bb"
        )
    ]
)
