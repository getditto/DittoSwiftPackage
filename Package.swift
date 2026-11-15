// swift-tools-version: 6.2

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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-dev-weekly.20261115.3216/dist/DittoSwift.xcframework.zip",
            checksum: "69321865c3acc7c22d38f90d7e764bcd6ead370ba152f48db831960623a36478"
        )
    ]
)
