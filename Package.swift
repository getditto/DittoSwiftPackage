// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-release-gate.1/dist/DittoSwift.xcframework.zip",
            checksum: "920f627f92cc6553410ead158cf76c476cfcc8210f9fe331d0769c5a87ff8d70"
        )
    ]
)
