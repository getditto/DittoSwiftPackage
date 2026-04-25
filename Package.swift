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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-rc.4/dist/DittoSwift.xcframework.zip",
            checksum: "1e23e55fbf082b608c30d0d12a5d0bba8a3f60ae893be497f2a3bd8e645fa2b1"
        )
    ]
)
