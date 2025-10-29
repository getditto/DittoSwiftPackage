// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-kmp-publishing.3/dist/DittoSwift.xcframework.zip",
            checksum: "ee972eab0f3b30d1b2536f1d581eef3b02722d25df44938fa7236c78d32e4194"
        )
    ]
)
