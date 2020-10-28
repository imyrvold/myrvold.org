// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "IrinaBlog",
    products: [
        .executable(name: "IrinaBlog", targets: ["IrinaBlog"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.7.0"),
        .package(url: "https://github.com/dinsen/brianpublishtheme", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "IrinaBlog",
            dependencies: ["Publish", "BrianPublishTheme"]
        )
    ]
)
