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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-aws-profile.1/dist/DittoSwift.xcframework.zip",
            checksum: "417512c27dc10e6a4831f8eea5c7f8786398690d1d448357db5038a7f0bc0ccd"
        )
    ]
)
