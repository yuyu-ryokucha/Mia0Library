// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mia0Library",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Mia0Library",
            targets: ["Mia0Library"]),
        .library(
            name: "shared",
            targets: ["shared"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "shared",
            path: "shared.xcframework"
        ),
        .target(
            name: "Mia0Library",
            dependencies: ["shared"]
        ),
        .testTarget(
            name: "Mia0LibraryTests",
            dependencies: ["Mia0Library"]
        ),
    ]
)
