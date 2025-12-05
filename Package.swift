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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.0-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "c175d12b8e5f1109e27f0ae2b6d7ac1bc8da131e62f0aa8c9b7692134400f502"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.0-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "142c330584edcdf0b1fdae2958ad4ae0a936b28f1fac1d25b64cd7bebaec462e"
        ),
    ]
)
