// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EComIDIntegrationsPublic",
    platforms: [.iOS(.v17)],
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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.4/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "14ef5563f13733688342a46d8c6a35e5a5dc5be14d2b427d321230a0e7b1fbc0"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.4/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "adec2fff4e756bce2c57ec4bfc2b7cf488fc91b5d10d0980959c2022a2381f51"
        )
    ]
)
