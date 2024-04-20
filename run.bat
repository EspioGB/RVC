@echo off
setlocal
title .HRVC Ai.

if not exist env (
    echo Please run 'install.bat' first to set up the environment.
    pause
    exit /b 1
)

env\python.exe src/wrbui.py --open
echo.
pause
