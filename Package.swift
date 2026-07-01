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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-dev-weekly.20260701.1/dist/DittoSwift.xcframework.zip",
            checksum: "bb6b47c961a14ea5dfac0ef0366ca1ddab1bbcf9062d9494815b38292857ba9a"
        )
    ]
)
