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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.12.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "d65becaf68a020a87a957f993d239d2f23fd337e22a133492a92d2d039c9e12d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.12.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "fd2648a3e530cdef106604d5b78716f1313fa33317b8597ed3f1129bb9b3f30e"
        ),
    ]
)
