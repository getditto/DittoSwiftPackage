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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-weekly.20260823.2222/dist/DittoSwift.xcframework.zip",
            checksum: "fb0f8d5a742acd7471a539d8d7336e864cefd1e1264616b99482c5ecb4be1885"
        )
    ]
)
