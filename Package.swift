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
        .package(name: "Publish", url: "https://github.com/johnsundell/publish.git", from: "0.9.0")
    ],
    targets: [
        .executableTarget(
            name: "IrinaBlog",
            dependencies: ["Publish"]
        )
    ]
)
