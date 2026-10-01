// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "MapplsLMS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapplsLMS",
            targets: ["MapplsLMS"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "MapplsLMS",
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-lms/MapplsLMS.xcframework-2.0.5.zip",
            checksum: "e848158b7c4c9672ffd90420a6e0489355d6a4ea8141e98ceeae2b28a6f66e18"
        )
    ]
)
