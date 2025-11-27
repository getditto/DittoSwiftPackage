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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-docc.6/dist/DittoSwift.xcframework.zip",
            checksum: "56dcc6ae12409ba9b48bcea65cb07278048d0041b7acc0b4d14cd36714557247"
        )
    ]
)
