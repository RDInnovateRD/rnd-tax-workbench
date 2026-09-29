Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.2.3
This release brings together all the fixes made since 1.2.0.

**Claim calculations**
- Salaries are the same everywhere: apportionment, the schedule and the Summary use each
  employee's own hours and payroll superannuation, and the claim's average R&D % is weighted
  by salary. FTE ratios use each employee's hours.
- Feedstock (Subdivision 355-H): only Feedstock-classified accounts count as inputs, sales are
  matched to the activity that used the inputs, and the adjustment appears on the Summary,
  Schedules page, tax-agent notes, PDF and Excel.
- Grants (Subdivision 355-G): the clawback flows through to Part B, the schedule and the
  exports, is capped at the year's notional deductions, and recalculates when a grant changes.
  The net cash benefit allows for tax on the clawback.
- Associates (s 355-480): a new "Amount paid in the income year" field; only the paid amount
  is claimed, and the rest is carried forward.
- Overseas contractors are only counted where there is an overseas finding.
- Changing a ledger account's classification now carries its claimable type with it.
- Accumulated depreciation is treated as a contra account, not an R&D asset.
- Payroll reconciles to the R&D staff wages account; no false gap warnings.
- Offset rates are entered as a number, so 25% base-rate companies get the right rates.

**Screens and exports**
- Step numbers and Back/Next buttons match the sidebar; untouched steps show "To Do".
- P&L "Save to Claim" works on the first click; manual classifications survive a re-upload.
- Exports show the verification date in Australian time.
- Mouse-wheel scrolling no longer changes number fields.
- Advice text corrected where it did not state the law accurately.

**Reliability**
- If the app is closed abruptly (Force Quit, Task Manager "End task"), its background server
  and database now shut down too, instead of running on in the background.
- A database left running by an older version is stopped and restarted cleanly.
- The database setup uses the files bundled with the app, so it needs no download on first
  launch (important on Apple silicon Macs) and no longer contacts Prisma's servers.
- The splash screen shows the correct version number.

### Updating
Version 1.2.0 checks for updates a few times a day and shows an update bar next to the credit
meter; click it to restart and install. Version 1.1.0 installs also update automatically. You
can always download the latest installer from the download page.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.2.3-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.2.3-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.2.3-win-x64.exe` |

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
