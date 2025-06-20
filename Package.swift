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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-experimental-publishing.1/dist/DittoSwift.xcframework.zip",
            checksum: "cd5ba705441adaccff454cd1de653329ae5e891f2af9de68605c5e0902156f9a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-experimental-publishing.1/dist/DittoObjC.xcframework.zip",
            checksum: "d8a7b57d4eba1ca7e0c4871d1d33574c13eadf473cd3d6a303471188f34eccf0"
        ),
    ]
)
