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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-experimental-gha-workflow.2/dist/DittoSwift.xcframework.zip",
            checksum: "14191999df0875bc0c7705ca09631163a4b2f0270db149db9976ee6b972ffcdd"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-experimental-gha-workflow.2/dist/DittoObjC.xcframework.zip",
            checksum: "0464f773f2846462b03a5e0edc5fcf9c11831fe42169be8979ef468b4ffc803e"
        ),
    ]
)
