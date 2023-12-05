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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.5.0-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "fa5baf05ef1ed457d569490cdea57bdd2e30d03e9afee9f7c2dad89360380e94"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.5.0-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "c06900e6d036415a19cbb26f067720098566ee8a08b236787cacd6b35cff8763"
        ),
    ]
)
