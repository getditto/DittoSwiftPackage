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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-preview.5/dist/DittoSwift.xcframework.zip",
            checksum: "7d85bf8d0623b310786f98cc3adf6e8e8ec00886dff644aa34a44c150205a0a0"
        )
    ]
)
