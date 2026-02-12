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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-all-sdks.2/dist/DittoSwift.xcframework.zip",
            checksum: "04b6a0863d18dfe59759d8bbce5ed39cc8abf8b2e9af63274b470e05095e1c9f"
        )
    ]
)
