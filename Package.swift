// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-experimental-swift-ca.1/dist/DittoSwift.xcframework.zip",
            checksum: "9552e7adbf18abab5f56f93c90f59bb8c8354238f5dd0e5712e3a986994bc4a3"
        )
    ]
)
