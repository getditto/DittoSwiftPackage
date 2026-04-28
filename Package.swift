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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-experimental-sdks-3539.2/dist/DittoSwift.xcframework.zip",
            checksum: "e194d256a22ea9fb074d5929d3d5db8ecbec5fc6b28eccebf3fa63498ba789b3"
        )
    ]
)
