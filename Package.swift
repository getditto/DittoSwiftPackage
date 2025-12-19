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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "217e7c9ec43b9166fa34bdd67aa5eb470105dd15db9b1ac0fd3d6bbd5532b54d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.1-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "d45e7d7c4694aacbaa720a736790191f396259a743abe546c7ac004160f8a2f3"
        ),
    ]
)
