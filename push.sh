#!/bin/bash
# Отправить изменения сайта на GitHub.
# Запуск: перетащите этот файл в Терминал и нажмите Enter.

set -euo pipefail
cd "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

printf "\n\033[1mИзменения\033[0m\n"
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  printf "  нечего отправлять — всё уже на GitHub\n\n"
  exit 0
fi
git status --short | sed 's/^/  /'

MSG="${1:-update $(date '+%d.%m.%Y %H:%M')}"
git add -A
git commit -q -m "$MSG"
printf "\n\033[1mОтправляю\033[0m\n"
git push -q origin main

URL="https://$(git remote get-url origin | sed -E 's#.*/([^/]+)\.git#\1#')"
printf "  \033[32m✓\033[0m готово — %s обновится за минуту\n\n" "$URL"
