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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "66a343de8694cc7ca0bce2dabe6322c07f32889add4e65188544b2e2bb2a53d7"
        )
    ]
)
