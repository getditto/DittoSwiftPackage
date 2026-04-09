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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdk-release-gha-workflow.4/dist/DittoSwift.xcframework.zip",
            checksum: "634668b075ccadb59cd674332668bfdf6003ef0e8825b67e847d84548f196345"
        )
    ]
)
