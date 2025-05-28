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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "5c69a17b7114c3b3ec3cd91c42320a0e2b4bb1cd65dfefd2b063dffd671a8f5c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "82477c7273846e81b0dc093f27de053e28baa3f777d774341f202858b2ab6106"
        ),
    ]
)
