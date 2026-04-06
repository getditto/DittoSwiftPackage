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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-gha-workflow.16/dist/DittoSwift.xcframework.zip",
            checksum: "74246340e176f6de52013b9cf69b5c245048ee462593d7f40855027468a41d4a"
        )
    ]
)
