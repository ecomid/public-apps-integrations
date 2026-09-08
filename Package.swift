// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EComIDIntegrationsPublic",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "EComIDNudgeScore",
            targets: ["EComIDNudgeScore"]),
        .library(
            name: "EComIDSizeFinder",
            targets: ["EComIDSizeFinder"]),
    ],
    targets: [
        .binaryTarget(
            name: "EComIDNudgeScore",
            url: "https://github.com/ecomid/public-apps-integrations/raw/2.0.0/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "ae7acd16b6c6736a8aa325d8dfbdb6c5e2a0a6aea2060e10f400ca802b561e1c"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/2.0.0/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "631deadc711964f6e9559bd220c1c15eb529368b2097398e2fd509818d8a856f"
        )
    ]
)
