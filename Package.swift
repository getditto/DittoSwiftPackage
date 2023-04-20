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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.0.2/dist/DittoSwift.xcframework.zip",
            checksum: "0cafeec19d94724a89f22d8316d42ee47c5728f99a46f2b283da03e8ee38eb7f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.0.2/dist/DittoObjC.xcframework.zip",
            checksum: "edf933e4aff9be9ed2a16f555e2a3cef2bc2942a3b4d2499a550812f5f9db06d"
        ),
    ]
)
