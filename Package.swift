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
            url: "https://software.ditto.live/cocoa/DittoSwift/2.0.1-experimental.xamarin.ios/dist/DittoSwift.xcframework.zip",
            checksum: "65928c8c0872aa1d86fb9f2a781590bd349b7e39ea6be9e91982a4b55fc1fc1b"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/2.0.1-experimental.xamarin.ios/dist/DittoObjC.xcframework.zip",
            checksum: "5618aefcf9b1fa3b0d6c1d66db7b724617f9817551678c3ced827a7e3c27eda1"
        ),
    ]
)
