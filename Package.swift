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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "6f4a3c5e22a55063573c8dc07828be5f28c2275ef096f7cb22144314b070e7b6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "98a7a42fe38f77d0cb1aa53b3d56490e8fcfea2b8f54f693b2ea477c473a33cc"
        ),
    ]
)
