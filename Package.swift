// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwiftWrapper"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .target(
            name: "DittoSwiftWrapper",
            dependencies: [
                .target(name: "DittoSwift"),
                .target(name: "DittoObjC"),
            ]
        ),
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.1/dist/DittoSwift.xcframework.zip",
            checksum: "dbed9236a1feacacbbd2f9d3f2ea3a52c2568b3127b649d0ac50b3b3765ab3a7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.1/dist/DittoObjC.xcframework.zip",
            checksum: "dd8b92a8d65ccd0f4fc3ddbaae512c6ebce38630059e8f9e88054c7fb3c3bfc3"
        ),
    ]
)
