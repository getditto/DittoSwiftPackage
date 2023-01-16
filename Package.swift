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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.0-alpha2/dist/DittoSwift.xcframework.zip",
            checksum: "81853efe1ab99bc3707f455daba209fe3216d71e85157e8921b319676bb5c4be"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.0-alpha2/dist/DittoObjC.xcframework.zip",
            checksum: "ca15b16b01cb1a88c13bf2b612476fc54c40fbb2b9a3cbacaf7335526cbd2baf"
        ),
    ]
)
