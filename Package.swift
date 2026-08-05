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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "8c2001783347ff762c430f77fcab6fe1bae53c7f80eac11a4196de553f39df23"
        )
    ]
)
