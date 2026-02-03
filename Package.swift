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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "2b316ae56246efc81cd1ea7dccd6607cbfb25f59709c20a5a0752749e4f85b37"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "7c2a42ee66a3fa03f8d7cc4ccac0053cadefc85b66ec1564bc5b1af834987ba3"
        ),
    ]
)
