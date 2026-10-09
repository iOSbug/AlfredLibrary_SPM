// swift-tools-version: 5.9
import PackageDescription

let version = "16.3.10"
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
            checksum: "ef61f02e65615f7a7b1573ab7667940bece9a0a85be87f5b8c561aad8f2989f8"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "c90f9fc856fc118e7402963724ca24a8ed069fe39024efbb2447b0c54c3850b1"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "c93e8a97f528f87c9f526e1cd3b43a31c09e33350eb5a4439669a85a275daff8"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "ab7775bbd80c294624bde557b032a6c5e039e61300b2d014fdcf246f1edf16fb"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "aaae9b66bd0fecedfffc876130b44ebd1db16e026ff06bc8c1cdff47cdd0d74f"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "079058592401aafac10f7673a252b1ce547b9234c31f5ad5c5761315b30e8352"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "432597657839e76d7f221a928d1517cae6e600a0348b7de85dd4ef8cbce9b4b1"
        )
    ]
)
