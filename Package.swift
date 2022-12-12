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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.0-alpha3/dist/DittoSwift.xcframework.zip",
            checksum: "e5b2551a610f6c6be6944e76529e68c51858b841835a75919d804b2d17ac537b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.0-alpha3/dist/DittoObjC.xcframework.zip",
            checksum: "8a0ee7b26329cd838ebca6d250546f1722af1037a427113fb4e11e6c2b5143a6"
        ),
    ]
)
