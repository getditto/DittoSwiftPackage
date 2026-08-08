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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.7-experimental.vp.1/dist/DittoSwift.xcframework.zip",
            checksum: "e538a434b4dca1c817b8ec7fd549e7a77f3fcdecc1a702141877b0ab99f02369"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.7-experimental.vp.1/dist/DittoObjC.xcframework.zip",
            checksum: "68daf1bbae52f7cf7859b114ee494e5f235b02ffa7219badcbb6fc6453c7883f"
        ),
    ]
)
