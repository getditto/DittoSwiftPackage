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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-all-sdks.4/dist/DittoSwift.xcframework.zip",
            checksum: "bbf123d359363e709e6e590320a0beb9b652a2a3c4b0d93391ef6ac2aeaebeb7"
        )
    ]
)
