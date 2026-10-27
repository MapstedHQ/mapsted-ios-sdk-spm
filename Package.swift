// swift-tools-version:5.9
// Mapsted iOS SDK 26.10.2 — SwiftPM manifest (hosted binaryTargets on MapstedHQ/mapsted-ios-sdk Release 26.10.2)
// MapSDK / SDWebImage / SSZipArchive stay on their 26.7.1 URLs: MapSDK is byte-identical in 26.10.2
// (CocoaPods 26.10.2 still resolves mapsted-sdk-core-map 4.4.6.2), and the 26.7.1-hosted SDWebImage /
// SSZipArchive binaries provide every symbol 26.10.2 needs, so they are not re-hosted under a new version.
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
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedCore.xcframework.zip",
            checksum: "4871b76c4e93ae1194db72df8e1ec3e0b12d436ec7be0cd1a89d20b7be800f39"
        ),
        .binaryTarget(
            name: "MapstedTriggersCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedTriggersCore.xcframework.zip",
            checksum: "07a224bf5dfbf3cc223030938d564aad2560df6043e5e8350b75147be41409f1"
        ),
        .binaryTarget(
            name: "MapstedComponentsCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedComponentsCore.xcframework.zip",
            checksum: "fd8abd62efb4a984c5af1afb99883dc9297be52244c054ad44b202f77187040f"
        ),
        .binaryTarget(
            name: "LocationMarketing",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/LocationMarketing.xcframework.zip",
            checksum: "e65af6bf081c553d0893570d2106159577001cb5c6da4304560a8e964c02c961"
        ),
        .binaryTarget(
            name: "MapstedAlerts",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedAlerts.xcframework.zip",
            checksum: "7f3db79ef826a4ae9cbfeb43a29701683379707aa7ab51945020cac5a50af960"
        ),
        .binaryTarget(
            name: "MapstedLocationShare",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedLocationShare.xcframework.zip",
            checksum: "1512ed47aaeecb8e1474a6712557854fd21b71ba0663957096e7fc3d24645675"
        ),
        .binaryTarget(
            name: "MapstedTopBarNotification",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedTopBarNotification.xcframework.zip",
            checksum: "dd55507414d29c82475cd6095ea0d1d30b7cde9dfb5a1b9d3bcda81a1f374357"
        ),
        .binaryTarget(
            name: "MapstedComponentsUI",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedComponentsUI.xcframework.zip",
            checksum: "5fd752a9fb53c10f045d769c487b70ab9e602c4ff01e96fc27ef12f0ff6cc08e"
        ),
        .binaryTarget(
            name: "MapstedMap",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedMap.xcframework.zip",
            checksum: "c2432386ed67d0bc8aa8b010a66524f632fa441ced9e4cacd137276fcb59d1cd"
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/MapstedMapUi.xcframework.zip",
            checksum: "25ec58632e60baf6414dfd22ea72d4f3d39e4b7c68dd88bd3b5ff0ff49982b76"
        ),
        .binaryTarget(
            name: "AppTemplate",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.4/AppTemplate.xcframework.zip",
            checksum: "cee25fc88d932d5f9d64311b30038177f313e6a111a58befb4ead296babf1b23"
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
