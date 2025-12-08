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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-gha-sdk-publish-test.19/dist/DittoSwift.xcframework.zip",
            checksum: "f361033b19fed6657fd43dd0f62266a7bbfd86c93f93f3c302599c5e10d35a38"
        )
    ]
)
