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
            url: "https://github.com/ecomid/public-apps-integrations/raw/2.0.1/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "28eed9f09dfc96e66adcfde901d44ad7118171b531103dac738e7acb4eed1fc9"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/2.0.1/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "9f3ec4a135aab34f4924db8b50311d9e921dc5517e340e8def3f604e3250a4e8"
        )
    ]
)
