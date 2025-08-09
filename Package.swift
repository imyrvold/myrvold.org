// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "IrinaBlog",
    platforms: [
        .macOS(.v12)
    ],
    products: [
        .executable(name: "IrinaBlog", targets: ["IrinaBlog"])
    ],
    dependencies: [
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.9.0"),
        .package(url: "https://github.com/imyrvold/IvanPublishTheme.git", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "IrinaBlog",
            dependencies: [
                .product(name: "Publish", package: "Publish"),
                .product(name: "IvanPublishTheme", package: "IvanPublishTheme"),
            ]
        )
    ]
)
