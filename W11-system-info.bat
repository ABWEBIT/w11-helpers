@echo off
title System Info

powershell $info = Get-ComputerInfo -Property OSName,OSDisplayVersion,OsBuildNumber; ^
Write-Host "Name: "($info).OSName; ^
Write-Host "Version: "($info).OSDisplayVersion; ^
Write-Host "Build: "($info).OsBuildNumber;

pause > nul
exit
