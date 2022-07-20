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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.0-alpha1/dist/DittoSwift.xcframework.zip",
            checksum: "ae0ee199d0aa3597316e7e7260c398d2d6e377fc317841db5740392b84a466b0"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.0-alpha1/dist/DittoObjC.xcframework.zip",
            checksum: "344aeb9fae65d30d91bea2a4b28d5f746278604983e35bf61bbbc694807c3b65"
        ),
    ]
)
