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
            url: "https://software.ditto.live/cocoa/DittoSwift/0.0.0-dryrun/dist/DittoSwift.xcframework.zip",
            checksum: "a33e10b04de05a11ebc045759b0818a47d0570c283e44ae61e05fd25b026bdec"
        )
    ]
)
