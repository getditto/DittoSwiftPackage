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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-release-gate.7/dist/DittoSwift.xcframework.zip",
            checksum: "0e97ed69f29f07fb3f17af4988986fc36cc6cc80da27fc1fd6a9f1ad53929254"
        )
    ]
)
