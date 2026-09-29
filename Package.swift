// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-preview.3/dist/DittoSwift.xcframework.zip",
            checksum: "5210de3ebaa179923ee7f23b5b46159e2e415dd7a4a658f1a321aac62e6d13c3"
        )
    ]
)
