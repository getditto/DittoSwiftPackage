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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.1.0/dist/DittoSwift.xcframework.zip",
            checksum: "630af4ff85e67f0e9a3ee28e69b5bf446bfeef80ebdcee6922834e1cc94d35d7"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.1.0/dist/DittoObjC.xcframework.zip",
            checksum: "711259eeab09cec59bf03f0fba3662cedc16429d5ffb0aa02ab6258fb9a7a19f"
        ),
    ]
)
