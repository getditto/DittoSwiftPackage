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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.6-dev-experimental-publishing.1/dist/DittoSwift.xcframework.zip",
            checksum: "52bc5a22fc21d3093bf3485fd061839e149dc764188768df5657e8897dbe3eb5"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.6-dev-experimental-publishing.1/dist/DittoObjC.xcframework.zip",
            checksum: "cc0b852fa9a86f79911d44b127cfdc678843f7b2d25b1cd3463cd92646ee88ee"
        ),
    ]
)
