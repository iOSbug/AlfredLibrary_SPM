// swift-tools-version: 5.9
import PackageDescription

let version = "16.3.08"
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
            checksum: "389d30610934a9d973cdcd191c78158f91ba5db532771111b8652e7a9aa2ae15"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "fa409bf1a7c16a8f39bbb5da4382f4c897a66934e616fb3668a30f3b3068c3bf"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "15b51df17b913457bcfc9700ba9d97a7864cb3e4f9296ae4b0943687978d624e"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "1fb0fc9b4be8d72bb39530b37f0b90c41bebbbab0b8df6317252bff15c0a3d56"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "eeff47a6c928c0e9e1f0347b071c31bcbe61a7751bfd14b6ecfee86d2e99be5f"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "3433c901b7c58fa88ba7cb8c76e8e0282aa53a9f1c0d25404d9e306fd793f862"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "92ae1e7f2e3cb17342631eb4c12eaf4bd1605bb493c88af7cbbc7f92755ca4e8"
        )
    ]
)
