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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-transports-android-module.5/dist/DittoSwift.xcframework.zip",
            checksum: "a344a8673b75333a6ec994a4326427d8cae7c22e5c8eb269a8024f0ae0259e1e"
        )
    ]
)
