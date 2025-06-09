// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MapplsLMS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsLMS",
            targets: ["MapplsLMSWrapper"])
    ],
    dependencies: [
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.0.4")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsLMS",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-lms/MapplsLMS.xcframework-2.0.1.zip",
            checksum: "abf5a92ab131e6a52425274951ccaa5149e6a3f5931cf9336fcdae7a00c50cce"
        ),
        .target(
            name: "MapplsLMSWrapper",
            dependencies: [
                "MapplsLMS",
                .product(name: "MapplsAPICore", package: "mappls-api-core-ios-distribution")
            ]
        ),
    ]
)
