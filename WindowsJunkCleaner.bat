@echo off
title Windows Junk Cleaner
color 0A

echo ==========================================
echo          WINDOWS JUNK CLEANER
echo ==========================================
echo.
echo Starting cleanup...
echo.

echo [1/4] Cleaning user TEMP...
del /f /s /q "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1

echo [2/4] Cleaning Windows TEMP...
del /f /s /q "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\Temp\*") do rd /s /q "%%D" >nul 2>&1

echo [3/4] Cleaning Windows Update cache...
del /f /s /q "%SystemRoot%\SoftwareDistribution\Download\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\SoftwareDistribution\Download\*") do rd /s /q "%%D" >nul 2>&1

echo [4/4] Cleaning DirectX Shader Cache...
del /f /s /q "%LocalAppData%\D3DSCache\*" >nul 2>&1
for /d %%D in ("%LocalAppData%\D3DSCache\*") do rd /s /q "%%D" >nul 2>&1

echo.
echo ==========================================
echo          CLEANUP COMPLETED
echo ==========================================
echo.
echo Files currently in use were skipped.
echo Author: https://github.com/fikrethn
echo.
pause
