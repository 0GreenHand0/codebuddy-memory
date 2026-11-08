#!/usr/bin/env bash
set -e
echo "=== 同步计划到 ~/.codebuddy ==="
cd "$(dirname "$0")"
echo "[1/2] 拉取最新计划..."
git pull
echo "[2/2] 写入 ~/.codebuddy ..."
mkdir -p "$HOME/.codebuddy/plans" "$HOME/.codebuddy/rules"
cp CODEBUDDY.md "$HOME/.codebuddy/CODEBUDDY.md"
cp plans/active-plan.md "$HOME/.codebuddy/plans/active-plan.md"
cp rules/plan-management.md "$HOME/.codebuddy/rules/plan-management.md"
echo "完成。重启 WorkBuddy 后生效。"
