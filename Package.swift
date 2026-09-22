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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.4-rc.4/dist/DittoSwift.xcframework.zip",
            checksum: "03ada983f09fed4a08eb7f54a660791b8cdbade57a42d019ca6e647d9f683f7b"
        )
    ]
)
