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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.4-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "a25851c0c8326679f81de8eeae9c2932567de84a2eb4f8aa6c53296192e76385"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.4-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "e72832cf09f37da574c4741e2f97654af252aa78a280495a159c2f64bad1d327"
        ),
    ]
)
