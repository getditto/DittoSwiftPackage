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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-experimental-gha-workflow.4/dist/DittoSwift.xcframework.zip",
            checksum: "4e660527c690f90c5f42517112c52ee467d7bb6bea620e9b56af18292e9021a0"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-experimental-gha-workflow.4/dist/DittoObjC.xcframework.zip",
            checksum: "2a0346bd3b2bfa1a2938df380e1e76681e2eaf71a10ced8e8abaf34002847f74"
        ),
    ]
)
