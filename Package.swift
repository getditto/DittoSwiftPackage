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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.2.0/dist/DittoSwift.xcframework.zip",
            checksum: "86d450308843249221930a30992cf7077e6f50bdbd1ebfbe51ba2c405511ac0f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.2.0/dist/DittoObjC.xcframework.zip",
            checksum: "a6548a2f7eed21b185e3bbb47f3b6b2d083a4e5363e61a8d90b0855b3b1ff26a"
        ),
    ]
)
