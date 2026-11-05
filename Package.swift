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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.1-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "31dcba1cf4a011a930e277b16ef2f92f3da075cc23247a3b2f7734cd627566d3"
        )
    ]
)
