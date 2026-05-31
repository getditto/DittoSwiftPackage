// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-dev-weekly.20260531.323/dist/DittoSwift.xcframework.zip",
            checksum: "c4d9c4f6a359130ed454066fffc7b7f73df5f1416f053e3eb7fc467a23d7cd92"
        )
    ]
)
