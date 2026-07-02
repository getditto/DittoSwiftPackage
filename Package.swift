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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.6/dist/DittoSwift.xcframework.zip",
            checksum: "2236bcb3266ba64f77ed6634fe07e41329f12546d1ba3a761fc58300e6aa25d3"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.6/dist/DittoObjC.xcframework.zip",
            checksum: "ebd07bda8451c74ea113dcf278d92012e62bc02016ef4a53b02741de88d6bfb0"
        ),
    ]
)
