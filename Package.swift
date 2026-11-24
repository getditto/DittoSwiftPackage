// swift-tools-version: 6.2

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
            url: "https://software.ditto.live/swift/DittoSwift/5.3.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "48d168dc18541c4135f4ce909bac17996219e5dce90427a0b8fa414d45b9832e"
        )
    ]
)
