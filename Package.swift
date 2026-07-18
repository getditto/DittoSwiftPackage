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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-sdks-4505.20260717.6/dist/DittoSwift.xcframework.zip",
            checksum: "d1448afdddd97f2f1a31875a023bb0ffe2b64614fb1678c99e471ed40587dab1"
        )
    ]
)
