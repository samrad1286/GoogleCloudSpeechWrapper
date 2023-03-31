
// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "GoogleCloudSpeechWrapper",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "GoogleCloudSpeechWrapper",
            targets: ["GoogleCloudSpeechWrapper"]),
    ],
    dependencies: [
        .package(name: "google-cloud-swift", url: "https://github.com/googleapis/google-cloud-swift", from: "0.5.0"),
    ],
    targets: [
        .target(
            name: "GoogleCloudSpeechWrapper",
            dependencies: [
                .product(name: "GoogleCloudSpeech", package: "google-cloud-swift"),
            ]),
    ]
)
