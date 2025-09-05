// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental.kb-inline-objc-into-swift-sdk.5/dist/DittoSwift.xcframework.zip",
            checksum: "62be966ac68bc3d04b0f99268a6c257b35668cbf444e3e2f4983696deb229039"
        )
    ]
)
