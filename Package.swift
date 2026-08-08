// swift-tools-version:5.9
// Mapsted iOS SDK 26.7.2 — SwiftPM manifest (hosted binaryTargets on MapstedHQ/mapsted-ios-sdk Release 26.7.2)
// MapSDK / SDWebImage / SSZipArchive stay on their 26.7.1 URLs: those binaries are byte-identical
// in 26.7.2 (CocoaPods resolves the same mapsted-sdk-core-map 4.4.6.2), so re-hosting them under a
// new version number would imply a change that did not happen..
// LAUNCH-SAFE: SDWebImage/SSZipArchive vendored as dynamic binaryTargets (correct @rpath install-names).
// Docs: https://developer.mapsted.com/mobile-sdk/getting-started/ios-getting-started/
import PackageDescription

let package = Package(
    name: "MapstedSDK",
    platforms: [.iOS(.v16)],
    products: [
        .library(name: "MapstedCore", targets: ["MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedTriggersCore", targets: ["MapstedTriggersCore", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "LocationMarketing", targets: ["LocationMarketing", "MapstedTriggersCore", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedAlerts", targets: ["MapstedAlerts", "MapstedTriggersCore", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedLocationShare", targets: ["MapstedLocationShare", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedTopBarNotification", targets: ["MapstedTopBarNotification", "MapstedLocationShare", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedComponentsUI", targets: ["MapstedComponentsUI", "MapstedComponentsCore", "LocationMarketing", "MapstedAlerts", "MapstedTopBarNotification", "MapstedLocationShare", "MapstedTriggersCore", "MapstedCore", "SDWebImage", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedMap", targets: ["MapstedMap", "MapSDK", "MapstedCore", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "MapstedMapUi", targets: ["MapstedMapUi", "MapstedMap", "MapSDK", "MapstedComponentsUI", "MapstedComponentsCore", "LocationMarketing", "MapstedAlerts", "MapstedLocationShare", "MapstedTopBarNotification", "MapstedTriggersCore", "MapstedCore", "SDWebImage", "SSZipArchive", "MapstedSDKSupport"]),
        .library(name: "AppTemplate", targets: ["AppTemplate", "MapstedMapUi", "MapstedMap", "MapSDK", "MapstedComponentsUI", "MapstedComponentsCore", "LocationMarketing", "MapstedAlerts", "MapstedLocationShare", "MapstedTopBarNotification", "MapstedTriggersCore", "MapstedCore", "SDWebImage", "SSZipArchive", "MapstedSDKSupport"]),
    ],
    targets: [
        .target(
            name: "MapstedSDKSupport",
            path: "Sources/MapstedSDKSupport",
            linkerSettings: [
                .linkedFramework("GLKit"),
                .linkedLibrary("c++"),
                .linkedLibrary("z"),
            ]
        ),
        .binaryTarget(
            name: "MapstedCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedCore.xcframework.zip",
            checksum: "44e14700655c0af1b42c7a1d4e9f5e6ddc1d88bcd26056a770d36ff3e8097afd"
        ),
        .binaryTarget(
            name: "MapstedTriggersCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedTriggersCore.xcframework.zip",
            checksum: "c5bfd17bdc4a096c63a11f744afd64d47c5df91f4b0eeb14335ab70a8f65d96c"
        ),
        .binaryTarget(
            name: "MapstedComponentsCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedComponentsCore.xcframework.zip",
            checksum: "06b375355f48bf944f1163fde476249e5f0ed75519edc53096a280018bb9a308"
        ),
        .binaryTarget(
            name: "LocationMarketing",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/LocationMarketing.xcframework.zip",
            checksum: "3959d4fec4c01c88b1642c8e049cc77313174800ce760b6ae611b55f412fb4e0"
        ),
        .binaryTarget(
            name: "MapstedAlerts",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedAlerts.xcframework.zip",
            checksum: "701441e5a15d1fea093a225b2fffc4b4d4a4d90b90b8e26536e978da6705674e"
        ),
        .binaryTarget(
            name: "MapstedLocationShare",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedLocationShare.xcframework.zip",
            checksum: "861db11b9fa97f39354efb3601038f8a0af8a66fc49f518553f4642bb7dedc75"
        ),
        .binaryTarget(
            name: "MapstedTopBarNotification",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedTopBarNotification.xcframework.zip",
            checksum: "41735a9f6509f1ef3ec47011acdbb000f37ddccddfe61131bbb224d9bc8f38ed"
        ),
        .binaryTarget(
            name: "MapstedComponentsUI",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedComponentsUI.xcframework.zip",
            checksum: "b8086e6065d48b1169cb239588acc30e5ea44130eb32e57df9b55383bf5e4c94"
        ),
        .binaryTarget(
            name: "MapstedMap",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedMap.xcframework.zip",
            checksum: "403f55d200c69216574304b3655fdbebe603a6912d6c4403f42e75a8adbad09e"
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/MapstedMapUi.xcframework.zip",
            checksum: "eb3c0b890305e3a63514845e3c986e76bbccd204737e9440f705a382ecc753c1"
        ),
        .binaryTarget(
            name: "AppTemplate",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.2/AppTemplate.xcframework.zip",
            checksum: "414b3892b700961b6a3ff03fc62e6673d8a0a3cbbe3c40c453626f44f0206b21"
        ),
        .binaryTarget(
            name: "MapSDK",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.1/MapSDK.xcframework.zip",
            checksum: "6dfdd874e4d564eae744f08fc777da3aaef516c613083dd926baf75c43802b9a"
        ),
        .binaryTarget(
            name: "SDWebImage",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.1/SDWebImage.xcframework.zip",
            checksum: "9f17947257e52ca6d6ec74034f8bb2bc08602bca09ff8374a76b1ad712d27375"
        ),
        .binaryTarget(
            name: "SSZipArchive",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.7.1/SSZipArchive.xcframework.zip",
            checksum: "f6c47056955e047ddcff2a073b1c254a36d1860e924750bac5dc0f95b451453e"
        ),
    ]
)
