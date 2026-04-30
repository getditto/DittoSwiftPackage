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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-sdk-publish-test.1/dist/DittoSwift.xcframework.zip",
            checksum: "9a68e2b623add551e2208c677253ea12ddfb210e129962b860f48bbc37ddb1bc"
        )
    ]
)
