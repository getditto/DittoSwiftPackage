// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.0-swift-6.1/dist/DittoSwift.xcframework.zip",
            checksum: "90507a4820e661e018c7329a930dfc88dda9c36a2596d58dc98d0be7493f2abf"
        )
    ]
)
