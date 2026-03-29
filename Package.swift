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
            url: "https://software.ditto.live/cocoa/DittoSwift/0.0.0-dryrun/dist/DittoSwift.xcframework.zip",
            checksum: "863454d65a4e8d5792290734834b3c85d59ef938988ae381fbc18f8773e2f23b"
        )
    ]
)
