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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.2/dist/DittoSwift.xcframework.zip",
            checksum: "3e14e07bd709dd0cb2c520e0366d120314b0ccd2d10b986e61ca9576c2edbc5c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.2/dist/DittoObjC.xcframework.zip",
            checksum: "16bfd1ab2b0a976d7ec3b7e52c78de24223c18975ad710a8cbf4dd598376d68e"
        ),
    ]
)
