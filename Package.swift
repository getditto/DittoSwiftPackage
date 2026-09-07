// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-weekly.20260906.2376/dist/DittoSwift.xcframework.zip",
            checksum: "8f28d2688b00db15dd27eb7fb3a417a280ded073bac5bd309310897e169d3849"
        )
    ]
)
