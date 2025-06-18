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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.5-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "3de31177861a9001a1244f8bb175e3f33715a68f25cd5e4555cea959be991318"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.5-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "92f1c4949e0729692721868a0a794c722ac555939a5655c43abbd93082b377d0"
        ),
    ]
)
