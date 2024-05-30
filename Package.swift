// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.0-catalyst-alpha3/dist/DittoSwift.xcframework.zip",
            checksum: "369d819cafd8eab3be485b32c7b66ba3e91bd2b99bb97e8b96465e705684cfad"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.0-catalyst-alpha3/dist/DittoObjC.xcframework.zip",
            checksum: "2b5ed323b194a3032091c1674e3f0c5ef882d3e5f69f8c404ed20bca457bb205"
        ),
    ]
)
