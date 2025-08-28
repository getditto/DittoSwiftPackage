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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "6d96cf6245bda266a3ac7cd37b2ff56e0539f0fdc2e347e6bf1aabf2fb80a59f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "c66ed4d17311c0608733d5ce05f46678166ed5c3f8639cde4b878fad80b8a948"
        ),
    ]
)
