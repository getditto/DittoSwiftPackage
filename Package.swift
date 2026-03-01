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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260301.226/dist/DittoSwift.xcframework.zip",
            checksum: "b7e9fa064f846aba7c7b44e670bbf95424eeabbe5a0cbb3ee5f6659a028a1fe9"
        )
    ]
)
