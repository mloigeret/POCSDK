// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "POCSDK",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "POCSDK",
            targets: ["POCSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/thii/SwiftHEXColors.git", from: "1.4.1"),
        .package(path: "Development Packages/POCColor")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "POCSDK",
            dependencies: ["SwiftHEXColors", "POCColor"]),
        .testTarget(
            name: "POCSDKTests",
            dependencies: ["POCSDK"]
        ),
    ]
)
