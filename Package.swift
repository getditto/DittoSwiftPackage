// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "DittoSwift",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoObjC", .exact("1.0.19")),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://github.com/getditto/DittoSwift/releases/download/1.0.19/DittoSwift.xcframework.zip",
            checksum: "93c65ae87fdd43eb1282bffc33047f543ba8e00d49fbf97bd4c5118be4d5d76b"
        )
    ]
)
