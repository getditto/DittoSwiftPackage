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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-rc.5/dist/DittoSwift.xcframework.zip",
            checksum: "8f69599793ba397cb4e9f64093032ec316221a303fc4bc74ad37a3575fcf47f2"
        )
    ]
)
