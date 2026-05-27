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
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.1/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "c234b58245e474fbcfc423bf375f3430f804542dba12c9c17705f6d39d1142ef"
        ),
        .binaryTarget(
            name: "EComIDSizeFinder",
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.2.1/Sources/EComIDSizeFinder.xcframework.zip",
            checksum: "16898cc83936141fbf24c83ea9bcc78e167018c2abcab8700a03e6a07cd005ae"
        )
    ]
)
