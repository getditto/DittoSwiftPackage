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
            url: "https://software.ditto.live/cocoa/DittoSwift/1.1.9/dist/DittoSwift.xcframework.zip",
            checksum: "73bb8ab2d0abad3692250f10ceb9efdb7a98c6954b4d88539c804d3adea70f56"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/1.1.9/dist/DittoObjC.xcframework.zip",
            checksum: "aa09a0fc513987d3110affcd3ca4e71b341ac1096d371e33dc6d7eb0be5bf7bf"
        ),
    ]
)
