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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.3/dist/DittoSwift.xcframework.zip",
            checksum: "20c9b0bd1f67d221b19367ae9d57af398e62b8e585c6484b28dbca7347283f52"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.3/dist/DittoObjC.xcframework.zip",
            checksum: "57d7541003a24a0c0432c09bc0ff61f72cd8113f475c3ceb126573d9c06921d8"
        ),
    ]
)
