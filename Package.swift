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
            checksum: "a055003d1763d9ac08c67ecd7ece9ca9bb455a8d968db84da1cbc277858a25d5"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "41e9d58b3ef2a9a3d125e1aa7a37e2b38f887f8348835bde5411cc273627e573"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "c80668772c0879f7e399dad8f5c19988e0910c182f530e4b5d277b61770a8424"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "ada8ce1d4765d4481ca69877e2227a38a979d6d50792e84a27d1544adbf0f95d"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "76d9d2fb7013bbdd5c543bd05f2f62d328cba9f9476de84584264249d5e7a14a"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "ae801905435568267f47b486d1e5737a530185cb3939a3b1e887c648e6cb50d6"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "9bc972b3610911662e214ccf27dbf53f2b57e0fd78b9202fc798fe0bdb1d3f53"
        )
    ]
)
