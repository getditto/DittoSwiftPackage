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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.6.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "20de60cf8a3532af927efb5f0d0d01fa69ffbb3d211de2153c3517148c80781c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.6.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "ffd914ae7188d093f387f677b9a9282597f9edfc02fb08445760160032c71581"
        ),
    ]
)
