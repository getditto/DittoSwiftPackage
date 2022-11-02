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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.1.0/dist/DittoSwift.xcframework.zip",
            checksum: "55fd76a98387456147f4ef4feec869804d93fb049ac59a0dc812eedb9dfb061e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.1.0/dist/DittoObjC.xcframework.zip",
            checksum: "451f9a7e8b1b0be70b5458042c74321eee30e124476f0204b924ed7c3958d1db"
        ),
    ]
)
