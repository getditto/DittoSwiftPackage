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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-dev-weekly.20260714.1/dist/DittoSwift.xcframework.zip",
            checksum: "f19b0312029ce1d9a8e6e9fecf754fd9af4e99256e1fbb548aef2ecaa5cc504b"
        )
    ]
)
