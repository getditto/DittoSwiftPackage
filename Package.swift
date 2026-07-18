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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-sdks-4505.20260717.4/dist/DittoSwift.xcframework.zip",
            checksum: "352d51c867789b868b078bd7d932f7cc8ac5816469a688fcef89165c3f4c09c2"
        )
    ]
)
