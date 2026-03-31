// swift-tools-version: 5.9
import PackageDescription

let version = "16.3.01"
let baseURL = "https://github.com/iOSbug/AlfredLibrary_SPM/releases/download/\(version)"

let package = Package(
    name: "AlfredLibrary_SPM",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "AlfredSDK",
            targets: [
                "AlfredLibrary",
                "AlfredCore",
                "AlfredNetManager",
                "AlfredLockManager",
                "AlfredLockBinder",
                "AlfredBridgeBinder",
                "AlfredBridgeManager"
            ]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AlfredLibrary",
            url: "\(baseURL)/AlfredLibrary.xcframework.zip",
            checksum: "b55930fb105d6df039e6e86d195d4db7b5ec998c523b601846afc9972f73c38c"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "1032117397cc0a2f87aaea8ae3f3a3a5d921794af2e50640ceb8eefcc574594f"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "26e3353cd4eade48d45ea21366330ce80580aa6dedb8c687aaf04e56ca7536cc"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "9a76e0274608e82955021e91a0a5752b153d038b24bab68be6dc5c93ffb1a66c"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "e63fb47e303bae204a422ee0b4156c52a77b35189a1df8d65b3f03e4d06b0384"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "d3a643691ac7bb9bbb89cec8399de815949f42acf019550cbaf5e2300b49e05e"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "0cea62094a8a187190d22c113cef80a2fc89a53a51e22c60072587b4994bdbde"
        )
    ]
)
