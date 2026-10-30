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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.2/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "9dcbe83161ad04e6570559112a04fa9f11b603274d533b6e1b02d89dba8b946e"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.2/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "41959481e8233fa1f286a03e4dbfe6f4df8511d8328daaa052af18c8a837227b"
        )
    ]
)
