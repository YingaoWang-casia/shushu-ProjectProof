#!/usr/bin/env bash
set -euo pipefail

REPO_URL="${PROJECTPROOF_REPO_URL:-https://github.com/YingaoWang-casia/shushu-ProjectProof.git}"
ARCHIVE_URL="${PROJECTPROOF_ARCHIVE_URL:-https://github.com/YingaoWang-casia/shushu-ProjectProof/archive/refs/heads/main.tar.gz}"
BRANCH="${PROJECTPROOF_BRANCH:-main}"
SKILL_NAME="${PROJECTPROOF_SKILL_NAME:-bigtech-interview-project-upgrader}"
DEST_ROOT="${CODEX_SKILLS_DIR:-$HOME/.codex/skills}"
DEST="$DEST_ROOT/$SKILL_NAME"

tmp_dir="$(mktemp -d)"
cleanup() {
  rm -rf "$tmp_dir"
}
trap cleanup EXIT

mkdir -p "$DEST_ROOT"

if [ -f "skills/$SKILL_NAME/SKILL.md" ]; then
  source_dir="$PWD/skills/$SKILL_NAME"
else
  source_dir=""

  if command -v git >/dev/null 2>&1; then
    if git clone --depth 1 --branch "$BRANCH" "$REPO_URL" "$tmp_dir/repo" >/dev/null 2>&1; then
      source_dir="$tmp_dir/repo/skills/$SKILL_NAME"
    fi
  fi

  if [ -z "$source_dir" ] && command -v curl >/dev/null 2>&1 && command -v tar >/dev/null 2>&1; then
    curl -fsSL "$ARCHIVE_URL" | tar -xz -C "$tmp_dir"
    source_dir="$(find "$tmp_dir" -maxdepth 3 -type d -path "*/skills/$SKILL_NAME" | head -n 1)"
  fi
fi

if [ -z "${source_dir:-}" ] || [ ! -f "$source_dir/SKILL.md" ]; then
  echo "Install failed: cannot find skills/$SKILL_NAME/SKILL.md." >&2
  exit 1
fi

rm -rf "$DEST.tmp"
mkdir -p "$DEST.tmp"
cp -R "$source_dir/." "$DEST.tmp/"
rm -rf "$DEST"
mv "$DEST.tmp" "$DEST"

echo "ProjectProof installed:"
echo "$DEST/SKILL.md"
