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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0/dist/DittoSwift.xcframework.zip",
            checksum: "1b1e8ba346d4a8185c04e4cc8252f6db6c64590fa276fbd605bf8e00b1697372"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0/dist/DittoObjC.xcframework.zip",
            checksum: "6f5912c11a1e34be43f87b59a07350189639bc767389aa0c8ed6d132268cda2c"
        ),
    ]
)
