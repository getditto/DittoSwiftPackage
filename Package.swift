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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.1-experimental-conn-limit.1/dist/DittoSwift.xcframework.zip",
            checksum: "f87789b92f05a54509aecbc8d4ddc53269daff5f0455510cb2158f3b3f24d423"
        )
    ]
)
