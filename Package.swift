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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "01edbfbe476f925fe783e99caafc495da78d004c6605c8d7c85470065c57660b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.1-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "120e81a925fb380a5aea9ce39935ad1688c77246eb993e270702d3f8d6c47fa4"
        ),
    ]
)
