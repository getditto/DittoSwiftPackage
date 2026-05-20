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
            url: "https://software.ditto.live/cocoa/DittoSwift/5.0.1-rc.1/dist/DittoSwift.xcframework.zip",
            checksum: "0e6bc03256e0a844d3aee5e7f6f0b0c338a2e0244c0b44ceda6313c47e84ec9c"
        )
    ]
)
