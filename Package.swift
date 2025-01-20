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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "dfef7f574852ef247901745ce4cc7775142808f7580ac1673791c964c7dae04a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "b0d525ea23a0f06f4232db379a4e82c7945c79d077c2b26cd72d1f9ee5370c5f"
        ),
    ]
)
