# Mapsted iOS SDK — Swift Package

Swift Package Manager manifest for the **Mapsted iOS SDK**. The binary XCFrameworks are hosted as
[GitHub Release assets](https://github.com/MapstedHQ/mapsted-ios-sdk/releases) on
[`MapstedHQ/mapsted-ios-sdk`](https://github.com/MapstedHQ/mapsted-ios-sdk); this repository provides
the `Package.swift` that wires them together (launch-safe: SDWebImage/SSZipArchive vendored as dynamic
binary targets with the correct `@rpath` install names).

## Add to your app

In Xcode: **File → Add Package Dependencies…**, enter:

```
https://github.com/MapstedHQ/mapsted-ios-sdk-spm
```

Rule: **Exact Version** **26.9.1**. Add the products you need:

- **MapstedMapUi** — maps + prebuilt map UI (most apps)
- **MapstedCore** — positioning only
- **MapstedMap**, **MapstedComponentsUI**, **LocationMarketing**, **MapstedAlerts**,
  **MapstedLocationShare**, **MapstedTopBarNotification**, **AppTemplate**

Each module is a **universal XCFramework** (device + simulator in one) — no separate simulator setup.

**Current version: `26.9.1`** · Requirements: Xcode 26.3, iOS 16.0+.

## Documentation

- Getting started (iOS) — https://developer.mapsted.com/mobile-sdk/getting-started/ios-getting-started/
- Release notes — https://developer.mapsted.com/mobile-sdk/release-notes/#v2671
- Migration guide (6.2.x → 26.7.1) — https://developer.mapsted.com/mobile-sdk/migration/migration_guide_to_26.7.1/
- API reference — https://developer.mapsted.com/mobile-sdk/api-reference/documentation/mapstedcore/

© Mapsted Corp.
