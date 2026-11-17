@echo off
chcp 65001 >nul
cd /d "%~dp0"
if not exist ".venv\Scripts\python.exe" goto novenv
set PYTHONIOENCODING=utf-8
set PYTHONUTF8=1
echo 启动网易云音乐工具箱...
echo 打开 http://localhost:5000 使用，Ctrl+C 停止
".venv\Scripts\python.exe" main.py
pause
exit /b 0

:novenv
echo [错误] 未找到 .venv 虚拟环境
echo 请先在项目目录执行:
echo     python -m venv .venv
echo     .venv\Scripts\pip install -r requirements.txt
pause
exit /b 1
