// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SettingsUI",
    platforms: [.macOS(.v15), .iOS(.v18)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SettingsUI",
            targets: ["SettingsUI"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "SettingsUI_Internal",
            path: "./Sources/SettingsUI_Internal/SettingsUI_Internal.xcframework"
        ),
        .binaryTarget(
            name: "SettingsUI_Protocols",
            path: "./Sources/SettingsUI_Protocols/SettingsUI_Protocols.xcframework"
        ),
        .target(
            name: "SettingsUI",
            dependencies: ["SettingsUI_Internal", "SettingsUI_Protocols"]
        )
    ]
)
