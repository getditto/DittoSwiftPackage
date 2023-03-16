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
            url: "https://software.ditto.live/cocoa/DittoSwift/3.0.6/dist/DittoSwift.xcframework.zip",
            checksum: "3cf85bcac2a70b101efa0cacb78f1e1bdf0d761251eb2982ed25a7fe12fffdeb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/3.0.6/dist/DittoObjC.xcframework.zip",
            checksum: "dbb67f017b20a0c56d39cace6b1304272db69cd26959650d5d01b14845050a73"
        ),
    ]
)
