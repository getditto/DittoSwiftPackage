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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.9.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "6c6d58bcc92f55cdb97f9ccf2a4c39cabd92c4c229e5615c5f08d7f07d9ae9fa"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.9.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "99aed94cec75b753b05293476530eae112ff79554060e6dfad6453c7c5c3e5cc"
        ),
    ]
)
