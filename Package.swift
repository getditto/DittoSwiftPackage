// swift-tools-version:5.8.1

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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-gha-sdk-publish.1/dist/DittoSwift.xcframework.zip",
            checksum: "4b27a30015891b08768e5da153fd1ba436a1b877b68c4d393a5e48cf31eae872"
        )
    ]
)
