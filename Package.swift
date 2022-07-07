// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.10/dist/DittoSwift.xcframework.zip",
            checksum: "749ae817d83b7d603691b3b81e4f444d091d383e9484cb0991f50dce79be4f7b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.10/dist/DittoObjC.xcframework.zip",
            checksum: "acfcb99eddfb3597f6c572f50bfcb3f5b0e74d68805af68954c2d9678517d9b9"
        ),
    ]
)
