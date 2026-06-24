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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental-260623.4/dist/DittoSwift.xcframework.zip",
            checksum: "249af0357d9ed592510a6338bf6f2672d2d419e04faf216184374fbb175d9304"
        )
    ]
)
