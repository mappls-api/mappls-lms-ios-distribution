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
            checksum: "ff376e583553fc7388430f01be49bd40aeed79bdbbfca2ada994a09b004d6b9d"
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
