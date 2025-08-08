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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.0-preview.3/dist/DittoSwift.xcframework.zip",
            checksum: "0cec523524061c620571f98c97ded8dec9a1ea7ff97000028cb1179cc8fb2b84"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.0-preview.3/dist/DittoObjC.xcframework.zip",
            checksum: "3983d525ed90ce5ddc4e76ce4f294af7aa261a4a60ea6c1e5fd6983615ca1c84"
        ),
    ]
)
