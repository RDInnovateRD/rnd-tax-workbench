#!/bin/bash
#
# Cut a GitHub release for RnD Tax Workbench and upload the installers.
#
#   ./release.sh 1.1.0
#
# Installers must already be hard-linked into assets/ with clean names.
# Requires gh authenticated as the account owning $REPO.
#
set -euo pipefail

VERSION="${1:-}"
REPO="RDInnovateRD/rnd-tax-workbench"
DIR="$(cd "$(dirname "$0")" && pwd)"
ASSETS="$DIR/assets"

[ -n "$VERSION" ] || { echo "usage: ./release.sh <version>   e.g. ./release.sh 1.1.0"; exit 1; }

echo "▸ checking gh auth"
ACTIVE=$(gh auth status 2>&1 | grep -B1 "Active account: true" | grep -o "account [A-Za-z0-9-]*" | awk '{print $2}' | head -1)
OWNER="${REPO%%/*}"
if [ "$ACTIVE" != "$OWNER" ]; then
  echo "  ERROR: gh is authenticated as '$ACTIVE' but the repo is owned by '$OWNER'."
  echo "  Run:  gh auth login   (sign in as $OWNER)"
  echo "  Then: gh auth switch --user $OWNER"
  exit 1
fi
echo "  authenticated as $ACTIVE"

echo "▸ ensuring repo exists"
if ! gh repo view "$REPO" >/dev/null 2>&1; then
  gh repo create "$REPO" --public \
    --description "RnD Tax Workbench — Australian R&D Tax Incentive desktop app. Downloads: https://blog.rdinnovate.com/workbench/"
  git -C "$DIR" remote remove origin 2>/dev/null || true
  git -C "$DIR" remote add origin "git@github-blog:$REPO.git"
  git -C "$DIR" push -u origin main
  echo "  created $REPO"
else
  echo "  $REPO already exists"
fi

echo "▸ collecting assets"
FILES=()
for f in "$ASSETS"/*.dmg "$ASSETS"/*.exe "$ASSETS"/*.zip "$ASSETS"/*.yml; do
  [ -e "$f" ] && FILES+=("$f")
done
[ -e "$DIR/SHA256SUMS.txt" ] && FILES+=("$DIR/SHA256SUMS.txt")
[ ${#FILES[@]} -gt 0 ] || { echo "  ERROR: no assets found in $ASSETS"; exit 1; }
printf '  %s\n' "${FILES[@]##*/}"
echo "  total: $(du -ch "${FILES[@]}" | tail -1 | cut -f1)"

echo "▸ creating release v$VERSION (this uploads GBs — be patient)"
gh release create "v$VERSION" "${FILES[@]}" \
  --repo "$REPO" \
  --title "RnD Tax Workbench $VERSION" \
  --notes-file "$DIR/RELEASE_NOTES.md"

echo "▸ done"
gh release view "v$VERSION" --repo "$REPO" --json url --jq .url
