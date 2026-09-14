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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.4-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "b399988a8a6531ade433a97fa69f321deeda4bd4dc69dde3194ba17c5d35dbb2"
        )
    ]
)
