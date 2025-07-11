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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.1-rc.2/dist/DittoSwift.xcframework.zip",
            checksum: "001a74e804d0adcc6a329ec6fefd072d7d9bb4dffa72c876e8591d21fff364bf"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.1-rc.2/dist/DittoObjC.xcframework.zip",
            checksum: "807febcc3df69dafc84d9b69b3aeb44bebba5492299cbf83d3ac5427c0dbc686"
        ),
    ]
)
