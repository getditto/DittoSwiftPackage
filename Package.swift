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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "c855734569d5225f4c363fea36af2d04472d662f752e153ef9fb47aa393023e2"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "91331d0c6c58cd272be068cbc46821c4318457bc3fd179fe036f9f0717e3341b"
        ),
    ]
)
