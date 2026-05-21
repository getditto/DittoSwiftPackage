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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "3a1965ddfe05f2e8ece22db9077d92c943129ea1d38ad6ee9de3c6a35362976a"
        )
    ]
)
