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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-transports-android-module.4/dist/DittoSwift.xcframework.zip",
            checksum: "c01c28380f63cec7b890e18c04bc72e5089c44273c1cc31d8135ac4ff7a89b2a"
        )
    ]
)
