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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.1/dist/DittoSwift.xcframework.zip",
            checksum: "d462914ce78133a1c72437e49950dd0543c88ddb7b8f81fd9afd8c769a62cdfa"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.1/dist/DittoObjC.xcframework.zip",
            checksum: "17b5eaec4fa1aa516845d52f7e1987b4ba84daac29cabee42e0df8b1bc43a34c"
        ),
    ]
)
