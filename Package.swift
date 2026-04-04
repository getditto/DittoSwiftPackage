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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-gha-workflow.14/dist/DittoSwift.xcframework.zip",
            checksum: "c1dddd47172e0b07f751b307a5ed8d37fd96f7f5d57088f49b0a75369cedc0ef"
        )
    ]
)
