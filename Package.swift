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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.5-preview.1/dist/DittoSwift.xcframework.zip",
            checksum: "d18021020d789b12290b8904b664eebf0e49f50ed3c8902a1403dd8ca2e5402e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.5-preview.1/dist/DittoObjC.xcframework.zip",
            checksum: "782b4be86dd830b0d1e4e1919e27f02d407723994240508c3116c06629d31934"
        ),
    ]
)
