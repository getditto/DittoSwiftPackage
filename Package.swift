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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-publish-script-update.0/dist/DittoSwift.xcframework.zip",
            checksum: "faa98f2a16b09110554e1737e5fdb2ecc82561ba785039fb68290fc1d3cbc912"
        )
    ]
)
