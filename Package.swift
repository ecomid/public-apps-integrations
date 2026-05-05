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
            url: "https://github.com/ecomid/ios-integrations-public/raw/1.1.11/Sources/EComIDNudgeScore.xcframework.zip",
            checksum: "ce2e2518ce2a7736b63be24e0942c788779bfecbfb22903044bb624164e13914"
        )
    ]
)
