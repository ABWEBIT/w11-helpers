@echo off
title System More Options

:: Show More Options on Right Click
reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
taskkill /F /IM explorer.exe & start explorer

exit