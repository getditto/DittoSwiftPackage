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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.0-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "647ce8ebf6979212c7f46290788721431a36dc512178f8cd1b2df480e1b06003"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.0-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "05804f36b287733adacea32d263cfbd32d6f186e54898f6942d0badb5746388e"
        ),
    ]
)
