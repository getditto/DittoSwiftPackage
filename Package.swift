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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-dev-weekly.20260705.1312/dist/DittoSwift.xcframework.zip",
            checksum: "b6e7f3e645e38f1c0d33b817e91272885d271bfcd289714dc6279d8e95a5590c"
        )
    ]
)
