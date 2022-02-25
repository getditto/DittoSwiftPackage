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
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.2/DittoSwift.xcframework.zip",
            checksum: "ab35eb04286be704a9a115216035de5a43f6a8f57037390b848566e842e27279"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://github.com/getditto/DittoSwiftPackage/releases/download/1.1.2/DittoObjC.xcframework.zip",
            checksum: "1af01b8bae8411cafab6758adb09decd17cfe89179f4f3d6e6908a75b2ad319e"
        ),
    ]
)
