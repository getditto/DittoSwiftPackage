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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.9-alpha1/DittoSwift.xcframework.zip",
            checksum: "4ecd5cab90091443958e505db9aef9237b273182a11517193c465e4e933c470c"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.9-alpha1/DittoObjC.xcframework.zip",
            checksum: "465c701a7d84545f52ac95f5f2b13579c5cfe0a9ebcca0738bcb65ca0c612566"
        ),
    ]
)
