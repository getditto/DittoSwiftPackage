// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.2.2/dist/DittoSwift.xcframework.zip",
            checksum: "bd7cef052c722ff186b45dee68e19a706a137598c2edf60a4c5e800995564ef6"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.2.2/dist/DittoObjC.xcframework.zip",
            checksum: "cd27ed70e849f689295cc735708e6e143dc3c6d5316b12ed097e5e95318fd4f9"
        ),
    ]
)
