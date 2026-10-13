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
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedCore.xcframework.zip",
            checksum: "04c1d74d335a7b2ae64592d7f88c18d07ca282a7f435b22026e0046c28f6d5f8"
        ),
        .binaryTarget(
            name: "MapstedTriggersCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedTriggersCore.xcframework.zip",
            checksum: "f7423eb675df80815b8f8c37aa7b1e40ce953921c3c3c149ae605a493668be0d"
        ),
        .binaryTarget(
            name: "MapstedComponentsCore",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedComponentsCore.xcframework.zip",
            checksum: "7cc3cdb66d930c771bdae62848939b8de2f54451dae2fffe88a69dbd7608db8f"
        ),
        .binaryTarget(
            name: "LocationMarketing",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/LocationMarketing.xcframework.zip",
            checksum: "5f9de3f610e3ddc3ef35399bf834170fa4fd1e1ca25d4976a8c9a68c774920b6"
        ),
        .binaryTarget(
            name: "MapstedAlerts",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedAlerts.xcframework.zip",
            checksum: "dab671c6630c05689569f1ec7df8427566ffa58daca42a2a5886c567a2212315"
        ),
        .binaryTarget(
            name: "MapstedLocationShare",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedLocationShare.xcframework.zip",
            checksum: "585f2f9b6539e4aa381cb41dcc2895da092e78f27bdb8c925a2b489ea38ca487"
        ),
        .binaryTarget(
            name: "MapstedTopBarNotification",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedTopBarNotification.xcframework.zip",
            checksum: "9d83fe47348c6336d88176b1d84281b44da26d7491a52bdaa76aef08c01283aa"
        ),
        .binaryTarget(
            name: "MapstedComponentsUI",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedComponentsUI.xcframework.zip",
            checksum: "bf1c828277c3c2f6622ee59ccf266a4561ab8ddcf69e221d7ce8d5f0134d1582"
        ),
        .binaryTarget(
            name: "MapstedMap",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedMap.xcframework.zip",
            checksum: "234797326dd4dc2a7ef19c0452be5e55575c00a8230fdd237be392b2737b9886"
        ),
        .binaryTarget(
            name: "MapstedMapUi",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/MapstedMapUi.xcframework.zip",
            checksum: "143ba0160d1056c1eb825ffe1831ad5a1b04bb224665d89320e3130743b7030a"
        ),
        .binaryTarget(
            name: "AppTemplate",
            url: "https://github.com/MapstedHQ/mapsted-ios-sdk/releases/download/26.10.3/AppTemplate.xcframework.zip",
            checksum: "8ef8f5e3979fa0d0bcd1b8633ab1fea84d0b7746b66d4df652069267cd41c7de"
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
