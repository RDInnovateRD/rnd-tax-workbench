Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.1.0-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.1.0-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.1.0-win-x64.exe` |

The `.zip` files are for automatic updates and are not needed for installation.

### Pre-release note
This build is not yet code-signed or notarised. macOS will report that the
developer cannot be verified, and Windows SmartScreen will show a warning.
On macOS, right-click the app and choose Open on first launch.

### Verifying
Checksums are in `SHA256SUMS.txt`. On macOS: `shasum -a 256 <file>`

### Your data
Financial data is stored in a local database on your own machine. Imported files
are not uploaded. R&D Tax Incentive AI processing is pinned to Australian
regions with no offshore fallback.

Support: rd@rdinnovate.com
