Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.2.0
- **In-app updates.** The app checks for new versions a few times a day, downloads them in
  the background and shows an update bar next to the credit meter. Click it to restart and
  install. From this version on you will not need to come back to the website to update.
- **One calculation engine for the whole claim.** The Summary, Schedules, exports and the
  compliance check now all use the same R&D expenditure figures, so they agree with each other.
- Taxable income estimate, contractor treatment (including overseas contractors),
  apportionment (gross annual costs, direct categories at 100%) and account R&D percentages
  corrected.
- Uploads: P&L sign handling, malformed ledgers and re-billing on statement saves fixed.
- Timesheets: a single "Activity" column is now read correctly, with each employee's own
  total hours.
- Narratives: numbered headings no longer collapse a draft into one section.
- Feedstock and grant clawback pages are reachable from the claim sidebar.
- Advice text corrected so it no longer states rules that are not the law.
- macOS on Apple silicon: the database engine for M-series Macs is now bundled.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.2.0-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.2.0-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.2.0-win-x64.exe` (being added shortly) |

The `.zip`, `.blockmap` and `.yml` files are used by automatic updates and are not needed
for installation.

### Signing
The macOS builds are signed and notarised by Apple. The Windows installer is not yet
code-signed, so Windows SmartScreen shows a warning: choose **More info**, then **Run anyway**.

### Verifying
Checksums are in `SHA256SUMS.txt`. On macOS: `shasum -a 256 <file>`

### Your data
Financial data is stored in a local database on your own machine. Imported files
are not uploaded. R&D Tax Incentive AI processing is pinned to Australian
regions with no offshore fallback.

Support: rd@rdinnovate.com
