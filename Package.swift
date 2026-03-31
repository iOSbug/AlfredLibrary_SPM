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
            checksum: "7601e00f48023bc2d01bce116c4b690e349d553303e3a48b1fdebe6571211ea3"
        ),
        .binaryTarget(
            name: "AlfredCore",
            url: "\(baseURL)/AlfredCore.xcframework.zip",
            checksum: "5a8295385e1320326a26cc15d847071bd0e44b095566e045471ac5d8cf7e7441"
        ),
        .binaryTarget(
            name: "AlfredNetManager",
            url: "\(baseURL)/AlfredNetManager.xcframework.zip",
            checksum: "0bd546c420804076c6c124200852f43163e89186ae8a4abc6b4f50c69401c4c2"
        ),
        .binaryTarget(
            name: "AlfredLockManager",
            url: "\(baseURL)/AlfredLockManager.xcframework.zip",
            checksum: "acce85e71d7d10fc2818ae6be62491d90a512f642d45f3b15743be3006c2c75e"
        ),
        .binaryTarget(
            name: "AlfredLockBinder",
            url: "\(baseURL)/AlfredLockBinder.xcframework.zip",
            checksum: "7d53f7f0db1754017faf47ed3e6fe3c7a585c4bd9030f94c3539de8043072530"
        ),
        .binaryTarget(
            name: "AlfredBridgeBinder",
            url: "\(baseURL)/AlfredBridgeBinder.xcframework.zip",
            checksum: "b16ff21e062a722858d598ff17c5ee5fb988b5b5659ceee7d68eb68ed2a63f5f"
        ),
        .binaryTarget(
            name: "AlfredBridgeManager",
            url: "\(baseURL)/AlfredBridgeManager.xcframework.zip",
            checksum: "4f1808205911afc9b73ddcb59689f1f1cd93f96f755911e01515a792e7213cb2"
        )
    ]
)
