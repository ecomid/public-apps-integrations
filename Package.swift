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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.0/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "b4e3ba44c71626bb975dd8492e9c0232c0a19f5c06e256d02428f17dc9b89a56"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.0/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "9f8ae3d26db2251c90bdb169b933579728972c0689a8547d560eca51f940e1f0"
        )
    ]
)
