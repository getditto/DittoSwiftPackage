// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-dev-weekly.20260726.1866/dist/DittoSwift.xcframework.zip",
            checksum: "12ad6244ff459665c9752fa3deebf4a9cb54a76ded0e9b68bf828f02f73e559c"
        )
    ]
)
