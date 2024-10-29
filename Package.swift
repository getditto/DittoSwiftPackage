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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "ba030cdea17d8e8067337e79ecca62a3cbaffcf2d46deac35f98de4e827985c8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "1ba64a8471e7431bd773c968744700895b302e98465e4600d158f099dab4bcd2"
        ),
    ]
)
