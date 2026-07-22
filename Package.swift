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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.3/dist/DittoSwift.xcframework.zip",
            checksum: "9ab6999b2d56dede05be055380a924e3011d984af6c9d07ccd1968d2f5d2ed1f"
        )
    ]
)
