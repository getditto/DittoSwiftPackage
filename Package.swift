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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.0-alpha2/dist/DittoSwift.xcframework.zip",
            checksum: "282fa785688ac8732f8110802d76d801392a93301112874f40808747e221ae8f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.0-alpha2/dist/DittoObjC.xcframework.zip",
            checksum: "e843621677776f5a7310e16dcf0d8bf498bfee101de646b076b1722a2dc2eb5a"
        ),
    ]
)
