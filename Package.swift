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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-experimental-xcode263.3/dist/DittoSwift.xcframework.zip",
            checksum: "793ecbd6b2cd336d9876ba97a780ac456889b8eba426ec9494d3bd765404bfe4"
        )
    ]
)
