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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.0-experimental-internal-jj-ws-support.1/dist/DittoSwift.xcframework.zip",
            checksum: "6e052f701dcba2a88ee881c7bfb7e911c186fcceb47279c0fe69a0e1dd408673"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.0-experimental-internal-jj-ws-support.1/dist/DittoObjC.xcframework.zip",
            checksum: "96d21d39d119eb24a081f7238675a11a6b081b827a97868fd9eab59aec522d0b"
        ),
    ]
)
