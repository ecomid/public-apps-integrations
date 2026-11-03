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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.3/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "f51501b79e3a17cf06228c5366860f14debe2e99e342351f059eb86dfe3853db"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.3/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "1a88c0d53862ecc7c62e127a4a56b3e238aecd214567a518226f35fcafbc9927"
        )
    ]
)
