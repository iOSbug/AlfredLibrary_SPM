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
            checksum: "8bd3969286f41de5dd6d6f10170745434bed6c1d84907f39e4a5e293e3ee73bb"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "676c68921e4d5ae8c671440af94fd21e826b484e102eb1249419a1b9b03e1c10"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "159667616f495f3f7d78ab867e6a75b200649aef32a4563db89f70f6348eaf95"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "4a1f0cb746ca862e456d0052f52f6f691bd800c5ee756605e840c676eb96e653"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "9d5bb4049d296a8756172c34034ffc5999a91699f9bd97bd3ed4106596d3da1d"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "1e5677053e6caa85d6b5ef5940736dc0ac4b573a69b3a2b4590d8b5475db7fb5"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "aef355ff0c8f81cb4f6952074d7896a7bf0c220fc58716c5f428a1bf5bb75a51"
        )
    ]
)
