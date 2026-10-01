# MapplsLMS SDK for iOS

`MapplsLMS` is the Mappls Logging Management System SDK for Apple platforms. It
logs activity events into encrypted on-device storage and periodically syncs
them to the Mappls server. Syncing is batched and can be triggered automatically
as entries are added, or manually on demand.

The SDK is multi-platform and builds for iOS, macOS, watchOS, and tvOS.

## Requirements

- Xcode 16 or later
- Swift 5.9 or later
- iOS 13.0+ (macOS 11.5+, watchOS 10.6+, tvOS 15.6+ for the respective targets)

## 🔗 Dependencies

[![MapplsAPICore](https://img.shields.io/badge/MapplsAPICore-required-blue)](https://github.com/mappls-api/mappls-api-core-ios-distribution)

Requires **[`MapplsAPICore`](https://github.com/mappls-api/mappls-api-core-ios-distribution)** for authentication (OAuth2) and shared context. Add it to your project separately and configure it before logging events.

## Installation

### Swift Package Manager

Add the package to your project in Xcode via **File > Add Package
Dependencies**, or add it to your `Package.swift`:

```swift
dependencies: [
    .package(
        url: "https://github.com/mappls-api/mappls-lms-ios-distribution.git",
        from: "2.0.5"
    )
]
```

Then add `MapplsLMS` to your target's dependencies:

```swift
.target(
    name: "YourApp",
    dependencies: ["MapplsLMS"]
)
```

`MapplsAPICore` is **not** resolved automatically. Add it to your project as a separate dependency using the same approach.

## 📦 Version History

> **Latest release · `2.0.5`** — 01 Oct 2026 · See [CHANGELOG.md](CHANGELOG.md) for full release notes.

| Version | Date | Highlights |
| :---: | :---: | :--- |
| **`2.0.5`** | 01 Oct 2026 | Project layout refactor and build improvements. |
| **`2.0.4`** | 01 Oct 2026 | OAuth2 authentication support, thread-safety fixes, and stability improvements. |
| **`1.0.6`** | 07 Feb 2025 | Bug fixes. |
| **`1.0.5`** | 23 Oct 2024 | Bitcode disabled to support Xcode 16. |
| **`1.0.3`** | 08 May 2024 | Apple Privacy Manifest file added. |
| **`1.0.0`** | 22 Aug 2023 | Initial version of `MapplsLMS`. |

## License

See [LICENSE.md](LICENSE.md).
