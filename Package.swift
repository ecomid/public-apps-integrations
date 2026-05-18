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
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.0/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "161fead53c128b243cc0a34d1e45fa4d4fef5b11bf774ba9c21427f3b58ab2b2"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.0/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "28cd84e7b9db78135480427f7460bc64f762c6d6e136eb118348ec4c3e448d72"
        )
    ]
)
