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
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedCore.xcframework.zip",
            checksum: "b2710877b5749be8c8b60d1f8ffe79a99eb4155223188fbc711568e5bd29ba6e"
        ),
        .binaryTarget(
            name: "MapstedTriggersCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedTriggersCore.xcframework.zip",
            checksum: "f89ba7339319293f84fea14676da808edad1d83082edb156127a60d2566f4492"
        ),
        .binaryTarget(
            name: "MapstedComponentsCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedComponentsCore.xcframework.zip",
            checksum: "e8e356df60f9fe0439573957e77205dd36d9a4a003f07596b1b88bcbe43feaa7"
        ),
        .binaryTarget(
            name: "LocationMarketing",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/LocationMarketing.xcframework.zip",
            checksum: "ac7c27268db95dd853208545ed5cccd42f4f11f7aecef749b706b3abe3d97115"
        ),
        .binaryTarget(
            name: "MapstedAlerts",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedAlerts.xcframework.zip",
            checksum: "689abd715c847324bcaf11172005a1944c9b0b1925a7fb1705f26f803c81f202"
        ),
        .binaryTarget(
            name: "MapstedLocationShare",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedLocationShare.xcframework.zip",
            checksum: "4a92ddf86f8ba0353e1279544f4bcc24327011d5250478eafec5bd9d7b3444ed"
        ),
        .binaryTarget(
            name: "MapstedTopBarNotification",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedTopBarNotification.xcframework.zip",
            checksum: "b1bb66dbc7a8175055a5ae6574bfc1b6d576326e278667d66e4177b798f86410"
        ),
        .binaryTarget(
            name: "MapstedComponentsUI",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedComponentsUI.xcframework.zip",
            checksum: "4a7143a28a5c7d4bde738194c882435e16c61f93e9047326e5f38b6c8cc40f6a"
        ),
        .binaryTarget(
            name: "MapstedMap",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedMap.xcframework.zip",
            checksum: "5a3daf146617b4f85f9ab95b1e16634f4006ffb75f44fa39fe2b49af8fe4912b"
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/MapstedMapUi.xcframework.zip",
            checksum: "648df215906fb01732df13efc3a274d41357b9c2958d8e60c149ba91af9ea602"
        ),
        .binaryTarget(
            name: "AppTemplate",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.2/AppTemplate.xcframework.zip",
            checksum: "02fb047ba59f331a2ad4164d5b5428dc1422c620cdcfb7e6beefc16bf6a1fe91"
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
