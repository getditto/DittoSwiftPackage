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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-gha-workflow.8/dist/DittoSwift.xcframework.zip",
            checksum: "045eddf3b81043525dd71d78273b4a34f31a2a701b49cd6ad4e5705c4c736cf9"
        )
    ]
)
