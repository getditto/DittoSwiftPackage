// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-catalysttvos-alpha2/dist/DittoSwift.xcframework.zip",
            checksum: "b3afa1f95b11dff3476445fcb42be3ebae2b9b612a81499fc66292f0c5e279e4"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-catalysttvos-alpha2/dist/DittoObjC.xcframework.zip",
            checksum: "abf2cd6b38f7959968dd7dcde37f84a92555b00aa7684ee54784f77e26f47410"
        ),
    ]
)
