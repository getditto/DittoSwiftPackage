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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-transports-android-module.6/dist/DittoSwift.xcframework.zip",
            checksum: "592a4325f4df6efbd7f37004499a9c1d6db1aaf5e2c2dba8ce5fbc1a561d7f11"
        )
    ]
)
