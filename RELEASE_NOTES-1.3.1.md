Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.3.1

A maintenance release of fixes. The law the app applies is unchanged from 1.3.0.

**Credits and auto top-up**
- Auto top-up settings and saving a card now work from inside the app. In 1.3.0 these screens
  could fail with "Failed to fetch".
- After saving a card, the confirmation page says the card is saved and auto top-up is on, and that
  nothing has been charged. It no longer says a payment was made.
- When the credit balance cannot be fetched (offline or a slow connection), the gauge shows "—" and
  "Balance not available" instead of "0.0 Critical".

**Timesheets and classification**
- A "Non-R&D hours" column is never read as R&D hours.
- In a wide timesheet, "Total hours" is read as hours worked, not R&D hours (which put everyone at
  100% R&D).
- Columns headed with activity references, as in the app's own template, are matched to those
  activities directly, without an AI step. Employees with no R&D hours are carried at 0 hours.
- Saved R&D hours agree with the allocations on screen.
- A trial balance uploaded on its own now shows the classification tabs, and Next to Apportionment
  is available.
- An overhead account with no stored category is bucketed from its account name, the same way the
  Apportionment screen shows it.

**Start-up**
- On Linux systems where "localhost" resolves to IPv6 only, the window no longer waits 60 seconds
  before opening.

Existing claims are kept. Installed 1.3.0 apps offer the update automatically.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.3.1-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.3.1-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.3.1-win-x64.exe` |
| Linux, 64-bit | `RnD-Tax-Workbench-1.3.1-x86_64.AppImage`, or the `.deb` (Debian, Ubuntu) or `.rpm` (Fedora, RHEL) |

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
