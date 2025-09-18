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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-experimental-bp-receive-timeout-3/dist/DittoSwift.xcframework.zip",
            checksum: "4a3ffc366c50286f4690579fb3e84139b1f3c06c9012df18c4b3458020727741"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-experimental-bp-receive-timeout-3/dist/DittoObjC.xcframework.zip",
            checksum: "496607a85d3d1c21a6c70e99e81c4aecb9e5c5d7716185d9d490c6e2cd2e7732"
        ),
    ]
)
