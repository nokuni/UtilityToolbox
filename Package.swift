// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Utility Toolbox",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Utility Toolbox",
            targets: ["Utility Toolbox"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.0.0")),
        .package(url: "https://github.com/apple/swift-numerics", .upToNextMajor(from: "1.0.2"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "Utility Toolbox",
                dependencies: [
                    .product(name: "Algorithms", package: "swift-algorithms"),
                    .product(name: "Numerics", package: "swift-numerics")
                ],
                path: "Sources/Utility Toolbox"),
        .testTarget(
            name: "UtilityToolboxTests",
            dependencies: ["Utility Toolbox"]
        ),
    ]
)
