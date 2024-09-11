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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.5-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "bcea09701b100e694f27141951d2bfa7beeb2573cf7e49af8ba8ca312530aa00"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.5-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "8573c96b3f7b088b68c869093667c4578718d18a0b0b1d8e2d33e89987014474"
        ),
    ]
)
