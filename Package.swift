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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental-cocoa-to-swift.1/dist/DittoSwift.xcframework.zip",
            checksum: "35b6be71f1021f99f53c344e70748d0150f34d5c999d5afb16e96f73cf731c20"
        )
    ]
)
