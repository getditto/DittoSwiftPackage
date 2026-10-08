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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental-innovapptive-memory.2/dist/DittoSwift.xcframework.zip",
            checksum: "8b3168b4f16a943440ea06b0a87f93556c618fef0a7f3be8458d17fc4ec7fcbd"
        )
    ]
)
