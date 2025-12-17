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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.14.0/dist/DittoSwift.xcframework.zip",
            checksum: "bc2ecea2095adc7fd775d9e22ef992ffc429d6ea5a65c964c47c7ea733a4991e"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.14.0/dist/DittoObjC.xcframework.zip",
            checksum: "aa3e0d9e71afce5bf7bcbb0e11aa8f851dafe488f27919ff9962bb783d21c078"
        ),
    ]
)
