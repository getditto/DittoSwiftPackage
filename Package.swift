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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-dev-weekly.20261019.2871/dist/DittoSwift.xcframework.zip",
            checksum: "210e8a2d454b21a962f00847e156a483156eea028447c39c34abc0e02fed5ded"
        )
    ]
)
