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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.2-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "aa57696f2180daee9a8e8d260bbc01226a6d9483c268cbdbd154bf915649666f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.2-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "79bd6dc0d5e7266eac263d5857bac330846a32463151b70213ba260bc18bd8d5"
        ),
    ]
)
