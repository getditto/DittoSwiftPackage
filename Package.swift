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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "019232f3f30a2dfbef87a1d28409079d825ae8d23e974b9a2c03534c953485ce"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "df5524f6d1d99c063338479386202740d1bcb4b4f54b2c90fecc0a9afd49fe45"
        ),
    ]
)
