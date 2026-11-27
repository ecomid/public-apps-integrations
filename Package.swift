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
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.5/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "d4ab0b13bb640612b8e9a2ec954d8a1a54daf565ddf467a77af2b91287b0200e"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/public-apps-integrations/raw/3.0.5/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "161113e00a46c1149d808eba9b2dd0249a1214dc7faa1909f4d18fd29a7051b3"
        )
    ]
)
