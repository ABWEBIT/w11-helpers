@echo off
title Registry Modifications

:: Disable Delivery Optimization
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t REG_DWORD /d 4 /f

taskkill /F /IM explorer.exe
start explorer.exe

pause > nul
exit
