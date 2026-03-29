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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-dev-weekly.20260322.242/dist/DittoSwift.xcframework.zip",
            checksum: "813ed6ab08aa91e0519a42582020947036bb5f63ec8980bff75c09a239120677"
        )
    ]
)
