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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "625aa6122bf65317510c478197946786caba5b3ae70c6d1cf5117f563f0fa020"
        )
    ]
)
