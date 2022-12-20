// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "ReactiveLottie",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "ReactiveLottie", targets: ["ReactiveLottie", "_lottieview"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ReactiveLottie",
            dependencies: [],
            path: "Sources"
        ),
        .binaryTarget(
            name: "_lottieview",
            path: "Frameworks/_lottieview.xcframework"
        ),
        .testTarget(
            name: "ReactiveLottieTests",
            dependencies: ["ReactiveLottie"]
        ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
