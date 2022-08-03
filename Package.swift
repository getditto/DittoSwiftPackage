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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.0/dist/DittoSwift.xcframework.zip",
            checksum: "e00b73ebeba2b951ee14ae384248b109a5d7a6e4db7078b7d0b195ffe4bd3aab"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.0/dist/DittoObjC.xcframework.zip",
            checksum: "1a13d83e42bbe891cdc1c7e5de3a81711028fed4e83bb8db10f8379ac1c3da00"
        ),
    ]
)
