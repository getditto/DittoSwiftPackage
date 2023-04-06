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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.1/dist/DittoSwift.xcframework.zip",
            checksum: "8d858bc9834a63de55393631b9249982ddea76f6a79113d8299fad55cbbc3b64"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.1/dist/DittoObjC.xcframework.zip",
            checksum: "ffa2381392eded4b16699719f3821fc393a4653c06be650c9d2792dcb69e6776"
        ),
    ]
)
