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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.1.1/dist/DittoSwift.xcframework.zip",
            checksum: "778d1a389860ff99fa60c084391a34219d936886ed2659493365189e582878fb"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.1.1/dist/DittoObjC.xcframework.zip",
            checksum: "cf7e194dbb2b24b2b6cb39656288b88ffd9768e493a0c81cb1daddc4e3a91270"
        ),
    ]
)
