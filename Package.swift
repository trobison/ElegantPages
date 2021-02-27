// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ElegantPages",
    platforms: [
        .tvOS(.v14)
    ],
    products: [
        .library(
            name: "ElegantPages",
            targets: ["ElegantPages"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ElegantPages",
            dependencies: [])
    ]
)
