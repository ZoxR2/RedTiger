@echo off
title RedTiger Launcher

echo [!] Starting RedTiger...

:: check python
where python >nul 2>nul
if %errorlevel% neq 0 (
    echo [x] Python not found in PATH
    pause
    exit /b
)

:: upgrade pip quietly (optional)
python -m pip install --upgrade pip >nul 2>nul

:: install requirements (optional safety check)
if exist requirements.txt (
    echo [!] Installing requirements...
    python -m pip install -r requirements.txt
)

echo [!] Launching RedTiger...

:: run main script
python redtiger.py

echo.
echo [!] Program closed.
pause