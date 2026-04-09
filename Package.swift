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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdk-release-gha-workflow.1/dist/DittoSwift.xcframework.zip",
            checksum: "38ae47bbd3ec7787a4ae18d6c4029633d27d56befa240621ea8339ae31214431"
        )
    ]
)
