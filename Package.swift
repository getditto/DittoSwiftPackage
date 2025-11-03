// swift-tools-version:5.8.1

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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-dev-weekly.20251103.83/dist/DittoSwift.xcframework.zip",
            checksum: "2ab2e81402e6c709485bc2542a5490341f6c9a26b6b93724ec1972a762a4f3d1"
        )
    ]
)
