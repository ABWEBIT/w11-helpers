@echo off
title System Info

powershell ^
$sys = Get-ComputerInfo -Property OSName,BiosSMBIOSBIOSVersion,OSDisplayVersion,OsBuildNumber,CsProcessors,CsPhyicallyInstalledMemory,CsTotalPhysicalMemory; ^
$gpu = Get-WmiObject win32_VideoController; ^
Write-Host "CPU: "$sys.CsProcessors.Name; ^
Write-Host "Physical Cores: "$sys.CsProcessors.NumberOfCores; ^
Write-Host "Logical Cores: "$sys.CsProcessors.NumberOfLogicalProcessors; ^
Write-Host "GPU: "("($gpu | ForEach-Object { $_.Name }) -join ' - '"); ^
Write-Host "RAM Installed: "([math]::round($sys.CsPhyicallyInstalledMemory / 1Mb))" Gb"; ^
Write-Host "RAM Available: "([math]::round($sys.CsTotalPhysicalMemory / 1Gb))" Gb"; ^
Write-Host "BIOS Version: "$sys.BiosSMBIOSBIOSVersion; ^
Write-Host "OS Name: "$sys.OSName; ^
Write-Host "OS Version: "$sys.OSDisplayVersion; ^
Write-Host "OS Build: "$sys.OsBuildNumber;

pause > nul
exit
