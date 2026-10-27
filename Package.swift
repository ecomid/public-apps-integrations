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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.1/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "f1d4df2314113d74031685cf616cf7f41bf809df57db2f393a81885521084ec0"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.1/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "1d506464a0c3b5a4848003738e0d73ffb31556318d6c35fbfe2c74e488c1b60f"
        )
    ]
)
