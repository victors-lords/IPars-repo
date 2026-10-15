#!/bin/bash
set -e
REPO_DIR="$HOME/aylinux-repo"
cd "$REPO_DIR"

echo "🦁 AyLinux Repo Güncelleniyor..."
dpkg-scanpackages  . > Packages
gzip -k -f Packages
{
  echo "Origin: AyLinux"
  echo "Label: AyLinux"
  echo "Suite: stable"
  echo "Date: $(date -Ru)"
  echo "Architectures: all"
  echo "Components: main"
  echo "SHA256:"
  for f in Packages Packages.gz; do
    printf ' %s %s %s\n' "$(sha256sum "$f" | cut -d' ' -f1)" "$(stat -c%s "$f")" "$f"
  done
} > Release

git add .
MSG="${1:-Repo guncellemesi $(date '+%Y-%m-%d %H:%M')}"
git commit -m "$MSG" || echo "Degisiklik yok."
git push origin main
echo "🚀 Başarıyla GitHub'a yayınlandı!"
