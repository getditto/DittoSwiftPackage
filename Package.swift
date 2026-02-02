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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sprint-demo.1/dist/DittoSwift.xcframework.zip",
            checksum: "f8c5be09f8becf1035a5a29e5d5a82ab95155b8fe72f6fcc84dd7a007be281ed"
        )
    ]
)
