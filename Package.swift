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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "00e62383da06b1ca52ba7078eb730a0cfac8c34244e5dcf199e353b6fe3b5cfc"
        )
    ]
)
