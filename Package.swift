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
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "b88cec005db0e17f9c530aa560268864cf04b15f7f2edc8b9ef2a9681ec50464"
        )
    ]
)
