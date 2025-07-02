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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "7a1ac8952ef8c97b3680f4b042793bd03523df86fdcc439ef715dc2dc8b1ead0"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "bb987a9fde67e4f854da81dd108cbfeefc76320f2bf8b7e5a33f0e79b6116c35"
        ),
    ]
)
