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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-preview.2/dist/DittoSwift.xcframework.zip",
            checksum: "9b4f4d0fbcabd9028ea664838955f9e5be4b66d6e612c2d96a19fdd636431e04"
        )
    ]
)
