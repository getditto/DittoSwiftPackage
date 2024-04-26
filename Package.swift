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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.1-rc.3/dist/DittoSwift.xcframework.zip",
            checksum: "e9e5078a090b6b25aa121089d74baacd6bb862f18fd97d3ffd2009b4229737f9"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.1-rc.3/dist/DittoObjC.xcframework.zip",
            checksum: "1b93b737943bb172e95d936a3b99ea6eec019c4c2302c9bdcf99b37265f23734"
        ),
    ]
)
