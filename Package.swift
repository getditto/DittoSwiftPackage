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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "24486da5215cb214e5e28fccc8cc4652f1ae550488ede8a0793b1bda3f3157c1"
        )
    ]
)
