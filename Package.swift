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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.6-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "ed98fc07db786c2883d1381b3755c4b322080e8c560d60cfa6103411e3a9ed38"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.6-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "4030dfc996b4ac99249d9b36f5b380b925f89975beb7a2f3fc6b272157ab4c7b"
        ),
    ]
)
