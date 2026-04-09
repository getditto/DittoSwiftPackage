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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdk-release-gha-workflow.2/dist/DittoSwift.xcframework.zip",
            checksum: "837ebe2458823fd42d809243d5baa5e6f9526e6a27775e4120626230bc7fbed4"
        )
    ]
)
