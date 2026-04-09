# AlfredLibrary_SPM

This repository is the public binary Swift Package Manager distribution for Alfred SDK.

## Consumer usage

Add this repository in Xcode:

`https://github.com/iOSbug/AlfredLibrary_SPM.git`

Then link the `AlfredSDK` product.

Source imports remain unchanged:

```swift
import AlfredLibrary
import AlfredCore
import AlfredNetManager
import AlfredLockManager
import AlfredLockBinder
import AlfredBridgeBinder
import AlfredBridgeManager
```

## Release process

Preferred:

```bash
./Scripts/deploy_alfred_spm_release.sh 16.3.04
```

This script:

1. Builds all SDK frameworks as `.xcframework`.
2. Zips every `.xcframework` from the private SDK repository.
3. Computes all binary target checksums.
4. Updates `Package.swift` in this repository.
5. Commits and pushes the package repo update.
6. Creates or updates the GitHub Release and uploads all `.zip` assets.

Manual fallback:

1. Build all `.xcframework` artifacts in the private SDK repository.
2. Run `Scripts/generate_alfred_spm_release.sh`.
3. Upload the generated `.zip` files to a GitHub Release whose tag matches the version.
4. Copy the generated `Package.swift` into this repository root.
5. Commit and push the updated package repository.
