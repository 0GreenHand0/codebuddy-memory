@echo off
chcp 65001 >nul
echo ========================================
echo   同步计划到本机 CodeBuddy / WorkBuddy
echo ========================================
cd /d "%~dp0"
echo [1/2] 拉取最新计划...
git pull
if errorlevel 1 (
    echo 拉取失败，检查网络或 GitHub 登录
    pause
    exit /b 1
)
echo [2/2] 写入 %USERPROFILE%\.codebuddy ...
if not exist "%USERPROFILE%\.codebuddy\plans" mkdir "%USERPROFILE%\.codebuddy\plans"
if not exist "%USERPROFILE%\.codebuddy\rules" mkdir "%USERPROFILE%\.codebuddy\rules"
copy /Y "CODEBUDDY.md" "%USERPROFILE%\.codebuddy\CODEBUDDY.md" >nul
copy /Y "plans\active-plan.md" "%USERPROFILE%\.codebuddy\plans\active-plan.md" >nul
copy /Y "rules\plan-management.md" "%USERPROFILE%\.codebuddy\rules\plan-management.md" >nul
echo.
echo 完成。重启 WorkBuddy 后生效。
pause
