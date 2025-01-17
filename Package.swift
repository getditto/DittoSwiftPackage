// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "11fcd92d546286665c20c8f9b8ede554a23e6719c8f6395cb0049e1c773b7f85"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "b394235b17f9c7e59a619c655b9f8cfe50d6fb59dc155f9acf116bbb07007ebc"
        ),
    ]
)
