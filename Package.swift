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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdk-publish.1/dist/DittoSwift.xcframework.zip",
            checksum: "88304c0c79f9725f8bfe01ace965b9e718a4481e3394b296c75e9a83b7c72c89"
        )
    ]
)
