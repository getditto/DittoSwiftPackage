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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "229d5ca0ddfadb4a2777c66244ad7d1665946051e4a5feba3b643644a5be0e22"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "78f07b9da4793c8a1db56848e56ea8bda87369eb482bd0a9b8de08e277cca03d"
        ),
    ]
)
