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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-docc.1/dist/DittoSwift.xcframework.zip",
            checksum: "c05e92d2ff5283b8363d0415512f4f25198dc4bd3a943a9172a9f7cc8c425931"
        )
    ]
)
