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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.11.0-preview.2/dist/DittoSwift.xcframework.zip",
            checksum: "9cdab3cd69208f08f1c694225aa428ef1fc45e2adecb16ac9b434a3b115b584f"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.11.0-preview.2/dist/DittoObjC.xcframework.zip",
            checksum: "df0c6ee622dd7eff67f508e2491b732d7343c7958007c48308afb737c35269b1"
        ),
    ]
)
