// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.6.0/dist/DittoSwift.xcframework.zip",
            checksum: "ae842cb8c4022d64f2f35debfd16830c95cd6a6c83a769233191ddc25127b606"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.6.0/dist/DittoObjC.xcframework.zip",
            checksum: "29b682f8c4c4542221340a9458f152a0d57f8b744825defdd6a4e6f2786a0cb4"
        ),
    ]
)
