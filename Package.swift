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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "f8437989e508cd07b7226f9821940ecb7a47eb623f027979da3c25b973562bef"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "613d1ba836148fcf72e57c81cb973bc8af3596c6fc5ffc4fceb358f979925949"
        ),
    ]
)
