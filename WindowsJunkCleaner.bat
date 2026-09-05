@echo off
title Windows Gereksiz Dosya Temizleyici
color 0A

echo ==========================================
echo       WINDOWS GEREKSIZ DOSYA TEMIZLEYICI
echo ==========================================
echo.
echo Temizlik basliyor...
echo.

echo [1/4] Kullanici TEMP temizleniyor...
del /f /s /q "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1

echo [2/4] Windows TEMP temizleniyor...
del /f /s /q "%SystemRoot%\Temp\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\Temp\*") do rd /s /q "%%D" >nul 2>&1

echo [3/4] Windows Update onbellegi temizleniyor...
del /f /s /q "%SystemRoot%\SoftwareDistribution\Download\*" >nul 2>&1
for /d %%D in ("%SystemRoot%\SoftwareDistribution\Download\*") do rd /s /q "%%D" >nul 2>&1

echo [4/4] DirectX Shader Cache temizleniyor...
del /f /s /q "%LocalAppData%\D3DSCache\*" >nul 2>&1
for /d %%D in ("%LocalAppData%\D3DSCache\*") do rd /s /q "%%D" >nul 2>&1

echo.
echo ==========================================
echo          TEMIZLIK TAMAMLANDI
echo ==========================================
echo.
echo Kullanilmakta olan dosyalar atlandi.
echo.
pause
