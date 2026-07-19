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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-sdks-4505.20260717.7/dist/DittoSwift.xcframework.zip",
            checksum: "68dd425b52035c5d645caaa5fdb88bfde072f44b077b53641191739049948dbb"
        )
    ]
)
