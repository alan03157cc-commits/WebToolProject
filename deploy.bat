@echo off
chcp 65001 > nul
echo ==========================================
echo       自動化網頁打包與推送至 GitHub
echo ==========================================
echo.

set /p commit_msg="請輸入這次更新的說明 (直接按 Enter 使用預設訊息): "
if "%commit_msg%"=="" set commit_msg="auto: update web tool page"

echo.
echo [1/3] 正在加入所有變更的檔案 (git add)...
git add .

echo.
echo [2/3] 正在進行版本提交 (git commit)...
git commit -m "%commit_msg%"

echo.
echo [3/3] 正在推送到 GitHub (git push)...
git push

echo.
echo ==========================================
echo   推送完成！Cloudflare 將會在背景自動開始部署。
echo ==========================================
pause