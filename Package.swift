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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0/dist/DittoSwift.xcframework.zip",
            checksum: "e80a9f2cd1d6a3bff70bcd66688966321f20f39fbbe8293f3a6e6c747e1f8209"
        )
    ]
)
