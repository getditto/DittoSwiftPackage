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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.10/dist/DittoSwift.xcframework.zip",
            checksum: "1894484cf0082f856703d40b898857561ef0f4887ba8ee1c51c75b31bf257c4a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.10/dist/DittoObjC.xcframework.zip",
            checksum: "667d53cba540b492fe937ec922a042ab47b6dbf051afe19c0a113bbf2f1c6fdb"
        ),
    ]
)
