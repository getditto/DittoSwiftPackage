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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "1a702c33749bcc41cf6c20b5b6f7a91bbc33bc214e2898559146ca78a6ac1699"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "637967c7df80444b3674c857eea21bd8a4fd745cc750836b2224eaac91129dc6"
        ),
    ]
)
