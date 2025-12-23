// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "JavaScriptKitExtensions",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "JavaScriptKitExtensions",
            targets: ["JavaScriptKitExtensions"]),
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.37.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "JavaScriptKitExtensions",
            dependencies: [
                .byName(name: "JavaScriptKit")
            ]
        ),
        .testTarget(
            name: "JavaScriptKitExtensionsTests",
            dependencies: ["JavaScriptKitExtensions"]
        ),
    ]
)
