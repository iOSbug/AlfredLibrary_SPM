// swift-tools-version: 5.9
import PackageDescription

let version = "16.3.09"
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
                "AlfredBridgeManager",
                "AlfredPackageSupport"
            ]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.5")
    ],
    targets: [
        .target(
            name: "AlfredPackageSupport",
            dependencies: [
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocket")
            ],
            path: "Support/AlfredPackageSupport"
        ),
        .binaryTarget(
            name: "AlfredLibrary",
            url: "\(baseURL)/AlfredLibrary.xcframework.zip",
            checksum: "2c0534820b5c981a8701fd43dc49dea167454aa647af7be94f49a804730722c3"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "517a453e8769f390a7cc20e5d85743214e2d4171137b3a85015fcf731d5dcd13"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "2a90e0a9827e564d4b570ea4e92baca3b1d92101bbe295361386d88dd9ded7ec"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "0a9d8437c830d992ae951730e335dcd7867ec82ab7bde156c75f7e7cc8806704"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "1628b8e9e237c25533dc07ca568199be23e96ecd0ffd16e4519901894d4e58d9"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "fc1cd8aa22186183c559a5749d67cbeef7168fba87d1c7398e335b2c34c7e6b5"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "21787a2462da505f7c8fc46575426fd2e8b61a2f712d0f8d7d4807028f20ec4c"
        )
    ]
)
