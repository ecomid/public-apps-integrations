// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EComIDIntegrationsPublic",
    platforms: [.iOS(.v16)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "EComIDWidgets",
            targets: ["EComIDWidgets"]),
        .library(
            name: "EComIDNudgeScore",
            targets: ["EComIDNudgeScore"]),
        .library(
            name: "EComIDSizeFinder",
            targets: ["EComIDSizeFinder"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "EComIDWidgets",
            path: "./Sources/EComIDWidgets.xcframework"
        ),
        .binaryTarget(
            name: "EComIDNudgeScore",
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.2/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "212e0f0a384bbd11a6e43c7e4bda2f72488939eabbef492c68ca7e659ab94ac5"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.2/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "bd229310eb3fe27291207fb56d3383be62f0d90b888cb8ce00ed2cb5ea256d10"
        )
    ]
)
