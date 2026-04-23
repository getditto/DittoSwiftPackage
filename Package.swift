// swift-tools-version:5.8.1

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v14), .macOS(.v11), .macCatalyst(.v14), .tvOS(.v14) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.4-experimental-gha-workflow.2/dist/DittoSwift.xcframework.zip",
            checksum: "ef5e4c9fe5e66f212fbc2ebee49c21a51aab832bb2552c3fc1c7bf347ca3e1b1"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.4-experimental-gha-workflow.2/dist/DittoObjC.xcframework.zip",
            checksum: "b0ee2f772e93eef4ab3b004840c568ba1b37fb1e748c8a071dff8817610a1a0c"
        ),
    ]
)
