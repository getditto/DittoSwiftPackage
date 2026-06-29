// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.1.0-experimental.forge.1/dist/DittoSwift.xcframework.zip",
            checksum: "25738b322e35701b62ae7403ba590810ec901dce91d1bb75916ac5ca43aa940b"
        )
    ]
)
