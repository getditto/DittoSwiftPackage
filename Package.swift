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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-sdks-4505.20260717.3/dist/DittoSwift.xcframework.zip",
            checksum: "524b5793f6faf6861953f69a0ecf6fd1eecc006e724670b99227feb414bdece8"
        )
    ]
)
