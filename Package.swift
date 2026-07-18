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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-sdks-4505.20260717.5/dist/DittoSwift.xcframework.zip",
            checksum: "abc115c38e361eb64262509dd799d91c4bd5800825d2d38a80ea5dd122448d49"
        )
    ]
)
