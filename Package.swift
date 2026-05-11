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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-conn-limit.2/dist/DittoSwift.xcframework.zip",
            checksum: "72da8ef8f2c1120352c42209cd883b0bedf72a7180d09219ebeba47289b40d13"
        )
    ]
)
