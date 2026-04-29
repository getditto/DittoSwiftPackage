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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.6-experimental-conn-limit-meshlab/dist/DittoSwift.xcframework.zip",
            checksum: "516a397f279026a1cbca5262ef4b35a96a722b1fe2417b77814a43ff3780e13b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.6-experimental-conn-limit-meshlab/dist/DittoObjC.xcframework.zip",
            checksum: "85e3b1714d581d3d7e5ba915759e810d9eff84cc6f1416e67b30f80a7d0bef6f"
        ),
    ]
)
