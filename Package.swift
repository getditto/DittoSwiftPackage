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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-experimental-gha-workflow.1/dist/DittoSwift.xcframework.zip",
            checksum: "46d25ec820407aee87a878f85328504790912080d2676dfc2936772509d2b464"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-experimental-gha-workflow.1/dist/DittoObjC.xcframework.zip",
            checksum: "42ffbada9c8f197e63dcc23d85bccb003cdf219fbf137aad4faec271ced9eedd"
        ),
    ]
)
