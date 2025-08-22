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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.4-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "f99ee02679e58274eccacbb0b2f69d291f75615ff50349ae0c858d685a044343"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.4-rc.1/dist/DittoObjC.xcframework.zip",
            checksum: "cbe1bb0159f15f0a82132f5945db8e9963d8547c602ab130f17108aa3e2c9c71"
        ),
    ]
)
