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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.3-experimental-vori-log-connecting/dist/DittoSwift.xcframework.zip",
            checksum: "96c963ebd4edd34f06ce704ce8553bfff3ea7616299db5e57b67a710d8501f04"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.3-experimental-vori-log-connecting/dist/DittoObjC.xcframework.zip",
            checksum: "e84f1cecbfde2875b9abfd427aa26815015ff1075b6af650b0417356974e8e27"
        ),
    ]
)
