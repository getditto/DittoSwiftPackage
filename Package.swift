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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-weekly.20260830.2299/dist/DittoSwift.xcframework.zip",
            checksum: "893f7ac4efbd07489fe3bd06d50c5884f8023a5e5cc1da8c057733f4782068e3"
        )
    ]
)
