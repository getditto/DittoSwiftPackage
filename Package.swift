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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-windows-runner-fix.1/dist/DittoSwift.xcframework.zip",
            checksum: "c43cc95ad450e93c647179193baafe8d9d7a9b2a2bf83253377e0759f4fc82e3"
        )
    ]
)
