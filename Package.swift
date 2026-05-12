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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.5-experimental-conn-limit.2/dist/DittoSwift.xcframework.zip",
            checksum: "db41b11debee9aa3db95501b2cdea87f83bc4a775a76cf867b7dabb0acf56c10"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.5-experimental-conn-limit.2/dist/DittoObjC.xcframework.zip",
            checksum: "cd57ed59d0aa4b261302d15fb05d077f6df723d9d9e42aa4815173e123120a8e"
        ),
    ]
)
