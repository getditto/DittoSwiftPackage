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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-dev-weekly.20260702.1/dist/DittoSwift.xcframework.zip",
            checksum: "651bf36ff807156584ca87534eb24b5388f431640c01fc172ecd0f6787e14f5c"
        )
    ]
)
