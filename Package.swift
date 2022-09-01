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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.4/dist/DittoSwift.xcframework.zip",
            checksum: "e9d10fadc1230a49da74f257634148a9534337addcd411cbcac90c3f82757f17"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.4/dist/DittoObjC.xcframework.zip",
            checksum: "b6298017d6776f0ea1821e83250c4545e3005084c1fd135e1e03c4191df8f3d8"
        ),
    ]
)
