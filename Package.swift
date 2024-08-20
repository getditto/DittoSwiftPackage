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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.5-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "6dba4326eb7677003500585f7598c2030a9b5eec6671327c4815d96dc12328a1"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.5-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "61f2a75002d0b45887238447fd8f31ad55adefc641ddd97a858c8d7d71c46395"
        ),
    ]
)
