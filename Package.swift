// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "Ditto",
    platforms: [ .iOS(.v15), .macOS(.v12), .macCatalyst(.v15), .tvOS(.v15) ],
    products: [
        .library(
            name: "DittoSwift",
            targets: ["DittoSwift"]),
    ],
    targets: [
        .binaryTarget(
            name: "DittoSwift",
            url: "https://software.ditto.live/cocoa/DittoSwift/5.1.0-experimental-gha-workflow.13/dist/DittoSwift.xcframework.zip",
            checksum: "e96bfd4746030056650f4b789f4540dafbaa81a718a3cfda2023aa1ea3a2a03c"
        )
    ]
)
