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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.5-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "7c55059d29ab13206c3c5621163830668bcf97628bd97ff957071caea335abc9"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.5-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "d42d8b66b10c17bdb3a5510d18d05aabf0e26e288d2226b16ed041bf19154402"
        ),
    ]
)
