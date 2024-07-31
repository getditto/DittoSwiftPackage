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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.4/dist/DittoSwift.xcframework.zip",
            checksum: "f36e247ecf973bc66dd832fe3171b780452f9dc2f3e02a0ce1f7e2cacf224e52"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.4/dist/DittoObjC.xcframework.zip",
            checksum: "f319c18f60240d115346cbfc029dd0a6933136f0507c8016ecb1f3e41804d076"
        ),
    ]
)
