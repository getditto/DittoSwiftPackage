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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.1/dist/DittoSwift.xcframework.zip",
            checksum: "b398ea25c4bc8d90b5758fcdc644ef5df8cc76fc617f8b33d2fbbacc2f7496aa"
        )
    ]
)
