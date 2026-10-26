Desktop application for preparing Australian R&D Tax Incentive claims.

**Download page: https://blog.rdinnovate.com/workbench/**

### What's new in 1.3.0

**New law: gambling and tobacco related activities**
- For income years starting on or after 1 July 2025, an activity that relates to gambling, or to
  tobacco, vaping or nicotine products, is not an R&D activity (s 355-25(2)(i) and (j) ITAA 1997,
  inserted by Act No. 58 of 2026). The only exception is an activity done solely to learn how to
  minimise the harm.
- The Summary asks this question for every activity. Time recorded on an excluded activity is taken
  out of salaries automatically; enter its other direct costs under "Amounts to exclude".
- If your company has a substituted accounting period, enter the first day of its income year on
  Company details. The rule follows that date, not the financial-year label.

**Claims follow the Act and ATO guidance more closely**
- Depreciation (item 7) is only claimed for tangible assets, as s 355-305(1)(b) requires.
  Amortisation of software, licences, patents, IP and capitalised development is left out, and an
  account that mixes equipment with software must be split before lodging.
- New "R&D amounts not in the profit and loss" on Company details, for R&D spending the accounts do
  not show as an expense:
  - costs capitalised to the balance sheet (you say whether they went into software or another
    intangible, which is claimed, or into a tangible asset such as plant, which is not; s 355-225(1)(b));
  - expenses a grant was netted against;
  - lease payments for leased equipment or premises used in R&D (the ATO accepts these).
- Leases under AASB 16: right-of-use depreciation and lease interest are left out; lease payments
  are claimed instead, unless you tell the app the company owns the asset (for example under hire
  purchase).
- Fees for preparing your R&D registration, claim or tax return are never claimed (ATO guidance).
- R&D intensity, grant clawbacks and feedstock follow the ATO's published formulas. Hours worked
  come from payroll; the app no longer assumes a full-time year when hours are missing.
- A per-employee check of each person's R&D share, with an audit trail of every change.
- Feedstock (s 355-445) is worked out per output, as the Act sets it out: the lesser of the
  feedstock expenditure (inputs, energy and the decline in value of assets used to make them) and
  the feedstock revenue. For an output that is processed further before sale, the revenue is the
  market value of the marketable product times the cost of producing the feedstock output over the
  cost of producing the marketable product. Outputs that came from inputs claimed in earlier income
  years are split across those years at each year's offset rate (Feedstock & Grants, "Earlier
  income years").
- Apportionment uses the same figures as the schedule, so the two always agree.
- Part-time staff: hours worked are taken from the timesheet when payroll has none, instead of a
  full-time year.

**Your decisions**
- Where the law is unsettled, or the answer depends on facts only you know, the Summary shows the
  question with links to the guidance and the dollar effect of each option. The cautious option is
  used until you choose. Each question is labelled "Question of fact" or "Point the law does not
  settle", in the app, Excel and PDF.

**Accounting standards**
- A new Accounting standards card: the accounting policy for the R&D tax offset (AASB 120 grant,
  AASB 112 income tax, or split), the journal entries, the tax effect, and a draft disclosure note.
  Also in the Excel and PDF exports.
- A "Basis and method" working paper (APES 220) explains how every figure was worked out and which
  are estimates.

**AI**
- Accounting and tax judgement (classifying the ledger, compliance checks, apportionment,
  reconciliation) is given to Claude Opus with extended thinking when it is available to us on AWS
  in Australia; writing and reading files use Claude Sonnet. Until Opus is available, everything runs
  on Sonnet.
- Ledger classification was rebuilt for accuracy and repeatability, and measured on sets of accounts
  it had never seen: 100% correct with no over-claims on the latest set.
- AI processing for the R&D Tax Incentive stays in Australia.

**Credits**
- Credit packs are unchanged (A$29 = 500 credits), and so is the price of every step answered by
  Claude Sonnet.
- A step answered by Claude Opus costs 3.5 times the Sonnet price. You are charged for the model that
  actually answered, after it answers: if Sonnet answers, you pay the Sonnet price.
- The "Credits needed" card shows both figures.

**Saving**
- Every tab saves as you type, including the Feedstock and Grants wizards; "Done" closes the form.
  The indicator next to it shows Saving / Saved, and Retry if a save failed.

**Fixes**
- Creating a project with AI can also write its activity narratives; the credit cost is shown
  before anything is spent.
- Confirmations and errors appear inside the app instead of system pop-ups.
- Sign-in is re-checked with the licence server, not only on this machine.
- The top-up amount on the pricing page no longer jumps back to $29.
- The new-claim wizard no longer skips the Address step.
- Opening Apportionment on a brand-new claim no longer shows an error.

### Before you lodge a claim you started in an earlier version
The app shows **Not ready to lodge** until these are done. Each item clears as soon as you answer it:
1. **2025-26 and later claims:** on the Summary, answer the gambling and tobacco question for every
   activity. If an activity is excluded, enter its other direct costs under "Amounts to exclude" and
   confirm.
2. **Capitalised amounts entered before 1.3.0:** on Company details, choose what each was
   capitalised into. Until then it is not added to the claim.
3. Review any figure that changed: item 7 no longer includes amortisation of intangibles, and lease
   and interest lines are treated as above.
4. **Feedstock:** the adjustment is recalculated under the new method; open each product on
   Feedstock & Grants and check it. For an output processed further before sale, enter the market value of the marketable product and the
   two production costs; until then the Summary lists it as a lodgement blocker.

### Updating
The app checks for updates a few times a day and shows an update bar next to the credit meter; click
it to restart and install. You can also download the installer from the download page.

### Which file
| Platform | File |
|---|---|
| macOS, Apple silicon (M1–M4) | `RnD-Tax-Workbench-1.3.0-mac-arm64.dmg` |
| macOS, Intel | `RnD-Tax-Workbench-1.3.0-mac-x64.dmg` |
| Windows 10/11, 64-bit | `RnD-Tax-Workbench-1.3.0-win-x64.exe` |

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
