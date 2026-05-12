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
            url: "https://software.ditto.live/cocoa/DittoSwift/4.13.5-experimental-flutter-puro-upgrade.1/dist/DittoSwift.xcframework.zip",
            checksum: "13fd062d625ca625cd0cafa46dd1ab2cf6ff771cc1f5f89636ea71bcb006ea89"
        ),
        .binaryTarget(
            name: "DittoObjC",
            url: "https://software.ditto.live/cocoa/DittoObjC/4.13.5-experimental-flutter-puro-upgrade.1/dist/DittoObjC.xcframework.zip",
            checksum: "0957ea23f6797f36254b7533a6c8118d867a4e4dfdbbad94ec5c85990b4d207f"
        ),
    ]
)
