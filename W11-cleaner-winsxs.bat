@echo off
title WinSxS Cleaner

Dism.exe /Online /Cleanup-Image /AnalyzeComponentStore

powershell Write-Host "`nPress any key to Clean Up WinSxS folder or close CMD window to terminate process..."
pause > nul

Dism.exe /online /Cleanup-Image /StartComponentCleanup

pause > nul
exit
