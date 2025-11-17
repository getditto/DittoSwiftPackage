// swift-tools-version:6.0.3

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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20251117.106/dist/DittoSwift.xcframework.zip",
            checksum: "417cbb0eab0b78961a5cd59ead7497d978dde8f6146133653d1e1d1fdc336aaf"
        )
    ]
)
