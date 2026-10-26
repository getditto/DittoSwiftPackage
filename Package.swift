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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "2cb91e62053afafbca6ec79b8247c51441a49b66535202e86a7388886431ceb4"
        )
    ]
)
