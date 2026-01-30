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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdk-test-suite.1/dist/DittoSwift.xcframework.zip",
            checksum: "af2cafc628ae19299fe91d49d4ff935166e38afad7a1e385d870ba1582a4ec3e"
        )
    ]
)
