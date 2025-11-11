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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-kmp-publishing.7/dist/DittoSwift.xcframework.zip",
            checksum: "52b07d8e1786286dc3e7318cd6f534b692328877667ebd380d821d24b12dc391"
        )
    ]
)
