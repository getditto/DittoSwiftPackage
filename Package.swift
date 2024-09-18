// swift-tools-version:5.5

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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.8.2-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "cfda2cbd64f91f60c19fa72aa5ab024c2be4430792835df67c0895fd22647d6d"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.8.2-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "be80301d2c39cd0d1edd7e547bfb0ac0b040b94cd2f9452264e96976c25d738f"
        ),
    ]
)
