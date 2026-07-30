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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "aa7bb50628e88cc7883bdddc269927017bfea3c970877b31b96bc8559d4a66a0"
        )
    ]
)
