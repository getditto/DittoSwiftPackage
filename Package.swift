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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.5/DittoSwift.xcframework.zip",
            checksum: "c965b43da578113baeeaa7f67f068112f40a0ac635a2c06bee44d26277166c07"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.5/DittoObjC.xcframework.zip",
            checksum: "f631fe84166dc83be8742b4d1c51d2ea03f153a1acfdb54a6f36ef00f5b2eb42"
        ),
    ]
)
