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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.2/dist/DittoSwift.xcframework.zip",
            checksum: "2dda69f83324034bafe4b535f5669cb5c3409478104a11f993c751630df3829e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.2/dist/DittoObjC.xcframework.zip",
            checksum: "2c86f70d503c6cd6a0f356bb89fc94f33b9cfba91af31da7beadd0f8f59ebee0"
        ),
    ]
)
