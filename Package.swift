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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-experimental-publishing.2/dist/DittoSwift.xcframework.zip",
            checksum: "d6ce05a0804dad9dab53c0509d77cad03a8c8fd5ae72035b5a76efaddcf2247c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-experimental-publishing.2/dist/DittoObjC.xcframework.zip",
            checksum: "e8e9de903820fa70b0721aca3f4307444846dc9e701c8251d997239c9c9cd6ee"
        ),
    ]
)
