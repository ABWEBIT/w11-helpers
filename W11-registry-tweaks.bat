@echo off
title Registry Tweaks

:: Restore old Right-click context menu
reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve

:: Remove Bing from the start menu
reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

:: Open File Explorer to: This PC
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f

:: Show File Extensions
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f

:: Lowering menu show delay 400 -> 100
reg add "HKCU\Control Panel\Desktop" /v MenuShowDelay /t REG_SZ /d 100 /f

:: Disable Advertising ID for Personalized Ads
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v Enabled /t REG_DWORD /d 0 /f

taskkill /F /IM explorer.exe
start explorer.exe

pause > nul
exit
