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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.1-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "e80e66ef983b913680a6e18de35c2efd51814be06628328b4a8290b3ae89dbec"
        )
    ]
)
