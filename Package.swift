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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "eb869379616cf9905e0ed35376199ea5b8748c9f2b01c59a71a754230c3135fe"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "1be0e72a6f78d6b511649ab899b2c9fe121796cea0edbef2211764d46c62f4bf"
        ),
    ]
)
