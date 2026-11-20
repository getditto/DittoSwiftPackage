// swift-tools-version: 6.2

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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "39cbdc5ecf425f4aac5a05ee4f287c93e0fd632c0eea288ce96fc1f971de7906"
        )
    ]
)
