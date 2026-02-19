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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-slack-notification-removal.1/dist/DittoSwift.xcframework.zip",
            checksum: "dcb7c006cf851837c2ecdbc175ae4a810cdd9be62450867a679867c18320f578"
        )
    ]
)
