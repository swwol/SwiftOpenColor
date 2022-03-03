// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftOpenColor",
    platforms: [.iOS(.v11), .macOS(.v11)],
    products: [
        .library(
            name: "SwiftOpenColor",
            targets: ["SwiftOpenColor"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftOpenColor",
            dependencies: [])
    ]
)
