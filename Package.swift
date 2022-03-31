// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "input-source-manager-cli",
    products: [
        .executable(name: "input-source-manager-cli", targets: ["InputSourceManagerCli"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0"),
        .package(url: "https://github.com/robinlieb/input-source-manager", branch: "main"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "InputSourceManagerCli",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
                .product(name: "InputSourceManager", package: "input-source-manager"),
            ]),
        .testTarget(
            name: "InputSourceManagerCliTests",
            dependencies: ["InputSourceManagerCli"]),
    ]
)
