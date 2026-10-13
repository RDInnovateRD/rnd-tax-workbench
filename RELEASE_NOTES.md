Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.2.4
**AI model upgrade**
- AWS is retiring Claude Sonnet 4.5, the model behind the app's AI features. 1.2.4 moves
  to the newer Claude Sonnet models: Sonnet 5.5 where available, otherwise Sonnet 4.6.
  Sonnet 4.5 is no longer used.
- R&D Tax Incentive AI processing stays in Australia (Sydney and Melbourne), with no offshore
  fallback.
- Credit prices are unchanged.
- The AI usage log now records which model handled each request.

1.2.4 also includes everything in 1.2.3 (claim calculation, screen and reliability fixes).

### Updating
Versions 1.2.0 and later check for updates a few times a day and show an update bar next to the credit
meter; click it to restart and install. Version 1.1.0 installs also update automatically. You
can always download the latest installer from the download page.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.2.4-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.2.4-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.2.4-win-x64.exe` |

The `.zip`, `.blockmap` and `.yml` files are used by automatic updates and are not needed
for installation.

### Signing
The macOS builds are signed and notarised by Apple. The Windows installer is not yet
code-signed, so Windows SmartScreen shows a warning: choose **More info**, then **Run anyway**.

### Verifying
Checksums are in `SHA256SUMS.txt`. On macOS: `shasum -a 256 <file>`.
On Windows (PowerShell): `Get-FileHash <file> -Algorithm SHA256`

### Your data
Financial data is stored in a local database on your own machine. Imported files
are not uploaded. R&D Tax Incentive AI processing is pinned to Australian
regions with no offshore fallback.

Support: rd@rdinnovate.com
