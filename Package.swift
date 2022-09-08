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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.5/dist/DittoSwift.xcframework.zip",
            checksum: "e6924c4a3d691120a8f3634f574d3750af798fff24889d05e5eeae2a0cce731a"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.5/dist/DittoObjC.xcframework.zip",
            checksum: "f4a627b50aef99eeabe30e22d86c4ba2bd02aafda8b07b82cef26aee0931dd2d"
        ),
    ]
)
