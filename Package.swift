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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "7ebca60292bf1307f4e13e66e5bd7390c872bfcfdd0331132be1b1136302b18b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "50c2c239cd383ce0fd18672738934c6ac73ae4277186676f2266d8715964c4ba"
        ),
    ]
)
