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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.4-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "a0c1fbd35d9a68360cfe9733b3b76529f5a56d88d678970b26980c0cf14ee7fa"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.4-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "f459d4b0587b1778a517a16c4a2ef5560db330512b92b60f7a35d3aa5102cee1"
        ),
    ]
)
