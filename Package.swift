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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "5732063bbaa5adfa523e966e1cf6a44621138dc8802e171f9fd591ee88401378"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "4cf5ac0f697856b11a620f7d76d0f0020718ef0430a369f9cf170529bf8815d5"
        ),
    ]
)
