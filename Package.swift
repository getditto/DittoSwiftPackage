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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.10.0-experimental-android-cargo-dir/dist/DittoSwift.xcframework.zip",
            checksum: "1912a36f2f85004ec0a8ab69cd7df7e045e369423f4871a269e33803e5c490bc"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.10.0-experimental-android-cargo-dir/dist/DittoObjC.xcframework.zip",
            checksum: "af8afa93f0a56eb1131bf3664ff3788377c05a98b8b8bfc4226de6b846aa0351"
        ),
    ]
)
