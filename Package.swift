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
            url: "https://mmi-api-team.s3.amazonaws.com/mappls-sdk-ios/mappls-lms/MapplsLMS.xcframework-2.0.6.zip",
            checksum: "d115b22a0a543c17adc5226c2aa2b657c42812763183d3862b42d2f057c4328e"
        )
    ]
)
