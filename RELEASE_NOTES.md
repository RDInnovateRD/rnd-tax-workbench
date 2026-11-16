Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.3.2

A maintenance release of fixes. The law the app applies is unchanged from 1.3.1.

**Credits**
- After a top-up, the confirmation page waits for the new balance before showing it. It no longer
  shows "0 credits" for a moment before the credits arrive.

**Financials and classification**
- Unticking a profit and loss or balance sheet item as R&D also clears the matching general ledger
  account, which could stay classified as R&D.
- The reconciliation check reads a balance sheet whose liabilities and equity are entered as
  negative (credit) figures correctly. It no longer reports a difference that is not there.
- The "No items classified as R&D" warning appears only when cost lines were reviewed, not after a
  balance-sheet-only run.

**Projects and narratives**
- Narratives are written from the project notes you pasted in, as well as the activity details.
- Closing the project window after the narratives are generated refreshes the page.

**Other**
- First sign-in no longer fails when several screens ask for the account at the same moment.
- Wording: "1 account", "1 activity" and "1 section exceeds".

Existing claims are kept. Installed 1.3.1 apps offer the update automatically.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.3.2-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.3.2-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.3.2-win-x64.exe` |
| Linux, 64-bit | `RnD-Tax-Workbench-1.3.2-x86_64.AppImage`, or the `.deb` (Debian, Ubuntu) or `.rpm` (Fedora, RHEL) |

The `.zip`, `.blockmap` and `.yml` files are used by automatic updates and are not needed
for installation.

### Signing
The macOS builds are signed and notarised by Apple. The Windows installer is not yet
code-signed, so Windows SmartScreen shows a warning: choose **More info**, then **Run anyway**.

### Verifying
Checksums are in `SHA256SUMS.txt`. On macOS and Linux: `shasum -a 256 <file>`.
On Windows (PowerShell): `Get-FileHash <file> -Algorithm SHA256`

### Your data
Financial data is stored in a local database on your own machine. Imported files
are not uploaded. R&D Tax Incentive AI processing is pinned to Australian
regions with no offshore fallback.

Support: rd@rdinnovate.com
