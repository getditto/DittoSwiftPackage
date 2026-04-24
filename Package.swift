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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "382a9d1d803df1c4e7b4817909e42ba798830d8ea47c467229fe07d30b0e2dba"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "a4ffed6c50fb7da5ee8d42cdc32c484d810e749d572aac0fabae0b87d9784f85"
        ),
    ]
)
