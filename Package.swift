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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.3-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "56deff5ae6a1b07ff3700a593c589c664b3bbbeea2638c291b806506ee02d56a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.3-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "37e64d211a04932a2f0b3c3cd6a08f086ca383357e4b7585452ce020818df932"
        ),
    ]
)
