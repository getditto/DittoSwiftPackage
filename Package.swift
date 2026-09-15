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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "29e9952affa4008b627e32ffc00cff0c68d8b64490c18c30ef710bda01db846b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "48cc70cc12adf3c29554364fdc0f91932b645c6e791030ffa890a45f74421ab6"
        ),
    ]
)
