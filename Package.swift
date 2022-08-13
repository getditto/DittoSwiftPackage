// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
        .library(
            name: "DittoObjC",
            targets: ["DittoObjC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.1/dist/DittoSwift.xcframework.zip",
            checksum: "24365b7e1f4ced7efac480646851586238fcc688d61707948fd1a6746cc77975"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.1/dist/DittoObjC.xcframework.zip",
            checksum: "e0f4ed65256aa2910ed807996b615ca6710dc568f00ef73a130c1cdf9a1f4954"
        ),
    ]
)
