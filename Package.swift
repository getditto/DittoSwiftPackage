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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.4-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "86a29f8fc1bc93675bd5a6eb07bfa7926293962b8f95a4120eab5b3cb5654d78"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.4-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "d4b31935456aa8b368f663cda71699cd4514ed758e805b3bb415121a24a851ed"
        ),
    ]
)
