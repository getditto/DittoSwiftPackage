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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "ee7dc23a242c5afa063b26ac108260d7446a5c383a12a9561d9e9952b711f805"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "2c0e05699015da7450e274a0b10eed535acdfbe92abc7b820decfc8c8b080213"
        ),
    ]
)
