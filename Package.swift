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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental-join.1/dist/DittoSwift.xcframework.zip",
            checksum: "55a0bea7fb04dd5f21c2f9db6e3e32f42dc922ecff9420f36100317c4a68dc37"
        )
    ]
)
