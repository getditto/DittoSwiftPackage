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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-dev-weekly.20261025.2948/dist/DittoSwift.xcframework.zip",
            checksum: "9304c6537be5d0b212941674bbf184cd613c3faf7f63257ecb22d983dc30860d"
        )
    ]
)
