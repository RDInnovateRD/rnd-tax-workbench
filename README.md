# RnD Tax Workbench — release staging

Publishes installers to GitHub Releases. **No source code lives here** — this
folder exists only to cut releases, deliberately isolated from the development
repo at `~/Documents/CodingProjects/RDTI_Calculator_Webapp_v7/`.

## Cutting a release

1. Build installers on each platform (see the dev repo's BUILD.md)
2. Hard-link them into `assets/` with clean, space-free names:

       ln -f "<dist>/RnD Tax Workbench-1.1.0-mac-arm64.dmg" \
             assets/RnD-Tax-Workbench-1.1.0-mac-arm64.dmg

   Hard links avoid duplicating gigabytes on disk.

3. Regenerate checksums:

       cd assets && shasum -a 256 *.dmg *.exe *.zip > ../SHA256SUMS.txt

4. Update `RELEASE_NOTES.md`, then run:

       ./release.sh 1.1.0

## Why assets are gitignored

Git rejects any file over 100MB. These are 291–590MB each. They are uploaded
as **release assets**, a separate mechanism with a 2GB per-file limit.

## Repo must be public

Release assets in a private repo require authentication to download, which
would break the public download page. The repo is public but contains only
this README.

## After releasing

The download page reads from `_config.yml` in the blog repo:

    workbench:
      version: "1.1.0"
      repo: "RDInnovateRD/rnd-tax-workbench"
      signed: false      # flip to true once notarised
      windows: "RnD-Tax-Workbench-1.1.0-win-x64.exe"
