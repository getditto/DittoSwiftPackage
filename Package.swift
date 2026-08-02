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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-weekly.20260802.1991/dist/DittoSwift.xcframework.zip",
            checksum: "bb472ec3a99e11fa826be211e812b317bc83db9707a9d7dcccb40e0ced991ebf"
        )
    ]
)
