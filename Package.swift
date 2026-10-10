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
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedCore.xcframework.zip",
            checksum: "cc957fc46a3233948d4c1db62d51c8f16327c0b6b97c29aa77d0fbe8732c3265"
        ),
        .binaryTarget(
            name: "MapstedTriggersCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedTriggersCore.xcframework.zip",
            checksum: "12948c6e681794736e062ba51719ec9e7663b425906e24d353e682942898625c"
        ),
        .binaryTarget(
            name: "MapstedComponentsCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedComponentsCore.xcframework.zip",
            checksum: "6abc51f198899c1b1cf8678de00bc5d2f2ea6f766611ee6346d8055a4d1564b5"
        ),
        .binaryTarget(
            name: "LocationMarketing",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/LocationMarketing.xcframework.zip",
            checksum: "b82216436ab206bde9af56685fd5a1e579f1674492d342f7048121e9bcb5d8af"
        ),
        .binaryTarget(
            name: "MapstedAlerts",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedAlerts.xcframework.zip",
            checksum: "b12969c54feb8d2c2b7e6bc7d11b7c08e6e43eaf867d37329857e5eaddf70676"
        ),
        .binaryTarget(
            name: "MapstedLocationShare",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedLocationShare.xcframework.zip",
            checksum: "641ee54344df0b3a6280603c84748e75d4bd27229c91c70b5aafa33e5070b354"
        ),
        .binaryTarget(
            name: "MapstedTopBarNotification",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedTopBarNotification.xcframework.zip",
            checksum: "e06163cd7af39767aef4aadaf9aab74d8eef3e73e2c9d3b83884bd3d6351bdb8"
        ),
        .binaryTarget(
            name: "MapstedComponentsUI",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedComponentsUI.xcframework.zip",
            checksum: "2bc3ef7ec5ad7168f940997a546c3f716ef885e16c02cb0f7f6d86c1a3bcf32e"
        ),
        .binaryTarget(
            name: "MapstedMap",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedMap.xcframework.zip",
            checksum: "d0a7760dfa97abf5c236ab10cf784bc25423d68a9cc62a4ed6c66b80aa872434"
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/MapstedMapUi.xcframework.zip",
            checksum: "e01bca75b296439c215904257b943ee997a774924b2e44353698621d42d8aed0"
        ),
        .binaryTarget(
            name: "AppTemplate",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.1/AppTemplate.xcframework.zip",
            checksum: "01d05cc28d804a66b96c20783fc244bb9d7e82e4bc7b8c35eb275aed4b4157a3"
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
