#!/bin/bash
set -e
REPO_DIR="$HOME/aylinux-repo"
cd "$REPO_DIR"

echo "🦁 AyLinux Repo Güncelleniyor..."
dpkg-scanpackages  . > Packages
gzip -k -f Packages

git add .
MSG="${1:-Repo guncellemesi $(date '+%Y-%m-%d %H:%M')}"
git commit -m "$MSG" || echo "Degisiklik yok."
git push origin main
echo "🚀 Başarıyla GitHub'a yayınlandı!"
