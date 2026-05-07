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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.4-experimental-gha-workflow-kotlin-only.1/dist/DittoSwift.xcframework.zip",
            checksum: "294f169fbd6757425cbe164bd0be391520bbaadfadbdc57addbdd05f53fa1970"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.4-experimental-gha-workflow-kotlin-only.1/dist/DittoObjC.xcframework.zip",
            checksum: "1b1f5783cf318066961a8adf47685a03fd59b27091e3c239c371626fd0da1932"
        ),
    ]
)
