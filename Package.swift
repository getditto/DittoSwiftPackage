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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.0-beta1/dist/DittoSwift.xcframework.zip",
            checksum: "08615d79f88f558be8721465ec93f918def9e012d6f92a28279ce1c09d2859c7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.0-beta1/dist/DittoObjC.xcframework.zip",
            checksum: "78301a3e167c4e01d683633c4325a561208d6cca6afc4c2d6d0deeb83cd2a187"
        ),
    ]
)
