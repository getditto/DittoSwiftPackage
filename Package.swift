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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-gha-workflow.7/dist/DittoSwift.xcframework.zip",
            checksum: "8a1f89ec3e9af251cef26ff4fe260b127cbf50ea64c9c203f0a55dae0922833c"
        )
    ]
)
