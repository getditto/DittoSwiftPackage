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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.4-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "fd8893224353f160b5448de2f226ee2977d1ff86f53a9972055a794d78ef96cc"
        )
    ]
)
