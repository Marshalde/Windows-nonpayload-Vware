@echo off
title Windows Install
color 0A
mode con: cols=60 lines=5

echo Installing Windows...
timeout /t 1 >nul

cls
echo Please wait, loading Windows...
setlocal enabledelayedexpansion

set "progress="
set "width=40"
set /a "barWidth=%width% - 2"

for /L %%i in (1,1,%barWidth%) do (
    set "progress=!progress=#"
    set "spaces=                                        "
    echo [!progress!!spaces:~0,%barWidth%!]
    timeout /t 1 >nul
)

echo Installation complete.

rem Create files
echo. > "Window11.exe"
echo. > "windows11support.bat"
echo. > "Windowsrevert.exe"
echo. > "Windowsrevertsupport.bat"
echo. > "WINDOWSservereinstallcrashhandler.javaNode:143.32"

echo Files created successfully.
pause >nul