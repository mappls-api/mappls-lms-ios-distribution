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
        .package(url: "https://github.com/mappls-api/mappls-api-core-ios-distribution.git", from: "2.1.3")
    ],
    targets: [
        .binaryTarget(
            name: "MapplsLMS",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-lms/MapplsLMS.xcframework-2.0.3.zip",
            checksum: "95315b1c98f025d6a838f8019239188dc4379119f17ca093e7d1bda7f359c5df"
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
