@echo off
title Registry Modifications

:: Disable Delivery Optimization
reg add "HKLM\SYSTEM\CurrentControlSet\Services\DoSvc" /v Start /t REG_DWORD /d 4 /f

pause > nul
exit
