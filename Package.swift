// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v11), .macOS(.v11) ],
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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.7.0/dist/DittoSwift.xcframework.zip",
            checksum: "e8d6cc64e757b302f77693451ec5fb1c477971de7e2435cfca3314a85ab49a59"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.7.0/dist/DittoObjC.xcframework.zip",
            checksum: "be330e763bc997c3c331c54f9172e54db69ed4b8db744a6672e52215bcdeac3f"
        ),
    ]
)
