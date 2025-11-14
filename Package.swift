// swift-tools-version:6.0.3

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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-kmp-publishing.23/dist/DittoSwift.xcframework.zip",
            checksum: "f3900c7ce10f1eb2104a24c4e497702a67a8b9191533fa03491d0ab8b55145c2"
        )
    ]
)
