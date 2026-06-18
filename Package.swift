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
            url: "https://software.ditto.live/swift/DittoSwift/5.0.2-experimental-xcode-fix.2/dist/DittoSwift.xcframework.zip",
            checksum: "a2ebd24c7427d7f6ce72d93d0c3ef59f23249820f511e2c549b92a7ab575d4a2"
        )
    ]
)
