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
            url: "https://software.ditto.live/swift/DittoSwift/5.2.0-preview.4/dist/DittoSwift.xcframework.zip",
            checksum: "99496de27df53d30abbcdcd815d28a9051120ad130b0a778b7e73bd147a51fd5"
        )
    ]
)
