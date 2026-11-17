@echo off
setlocal EnableDelayedExpansion

:: ============================================================
:: Seven Beans — one-click launcher (backend + frontend)
:: Place this file in the repo root (Cafe-Seven-Beanss/)
:: Double-click to start: backend (7B/server) + frontend (7B)
:: ============================================================

set "SCRIPT_DIR=%~dp0"
set "BACKEND=%SCRIPT_DIR%7B\server"
set "FRONTEND=%SCRIPT_DIR%7B"

:: --- Node.js check ---
where node >nul 2>&1
if errorlevel 1 (
    echo ERROR: Node.js is not installed or not on PATH.
    echo Install from https://nodejs.org/ then re-run this file.
    pause
    exit /b 1
)

echo ========================================
echo   Seven Beans — starting backend + frontend
echo ========================================
echo.

:: --- 1) Backend: 7B/server (Express, http://localhost:5000) ---
echo [1/2] Backend : %BACKEND%
cd /d "%BACKEND%"
if not exist "node_modules" (
    echo   Installing backend dependencies (first run only)...
    npm install >nul 2>&1
    if errorlevel 1 echo   WARNING: backend npm install failed.
)
start "SevenBeans-Backend" cmd /k "node index.js"

:: --- 2) Frontend: 7B (Vite, http://localhost:5173) ---
echo [2/2] Frontend: %FRONTEND%
cd /d "%FRONTEND%"
if not exist "node_modules" (
    echo   Installing frontend dependencies (first run only)...
    npm install >nul 2>&1
    if errorlevel 1 echo   WARNING: frontend npm install failed.
)
start "SevenBeans-Frontend" cmd /k "npm run dev"

echo.
echo ========================================
echo   Backend  : http://localhost:5000
echo   Frontend: http://localhost:5173
echo   Two command windows opened — keep both open.
echo   Close either window to stop that service.
echo ========================================
echo.
pause
