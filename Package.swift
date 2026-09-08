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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "53339bef03607fff9e968bacfd00435e5b677f8728bb7788512cc9074933a8c4"
        )
    ]
)
