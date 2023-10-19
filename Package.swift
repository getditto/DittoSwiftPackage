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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.3/dist/DittoSwift.xcframework.zip",
            checksum: "0220652994eed88baabb0eb3a7cb5494863a9a9088c91940fdcb5b5865b95a70"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.3/dist/DittoObjC.xcframework.zip",
            checksum: "30274c979ae52395c9def0237225fb9c0385e677c8df3232bbee9444bc88985c"
        ),
    ]
)
