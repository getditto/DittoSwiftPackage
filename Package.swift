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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.2/dist/DittoSwift.xcframework.zip",
            checksum: "0c2e04473a5f530ff9d5fcc1d7befdcafef6c0561755c1cb2752baacfd203035"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.2/dist/DittoObjC.xcframework.zip",
            checksum: "983a52e330d31d5cd1f0fa2dc3e7a6892cdfbd217137014d99ba9a601b302f56"
        ),
    ]
)
