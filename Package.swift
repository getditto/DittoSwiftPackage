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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-gha-sdk-publish-test.4/dist/DittoSwift.xcframework.zip",
            checksum: "6d28c3829e008d67957608c0172e975ccd5526acd05cc722d6d9285a2857cbdc"
        )
    ]
)
