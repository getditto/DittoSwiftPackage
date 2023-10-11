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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.4.2-alpha1/dist/DittoSwift.xcframework.zip",
            checksum: "6b8ac455e613c4c252624d5e38ed28bc65ca906820aa666dc757ca1bafc4f24d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.4.2-alpha1/dist/DittoObjC.xcframework.zip",
            checksum: "10685362d7e08eb77c27323fef211653b7f3e835e1f241f81d80e58d2f5374de"
        ),
    ]
)
