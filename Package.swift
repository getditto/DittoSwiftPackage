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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.6/DittoSwift.xcframework.zip",
            checksum: "fa53bbf6482dc4a04ab9d30876c27a3da252807ed656c936b0db037d7ba4cae8"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.6/DittoObjC.xcframework.zip",
            checksum: "ddee0f43bcbc2719dbcd70101e3cfcd87d82a9aa0bc0eeb6c74e2e7f59950084"
        ),
    ]
)
