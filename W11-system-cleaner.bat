:: Windows update
powershell Stop-Service -Name wuauserv
powershell Remove-Item "$env:WINDIR\SoftwareDistribution\Download\*" -Force -Recurse -ErrorAction SilentlyContinue
powershell Start-Service -Name wuauserv

:: Prefetch
powershell Remove-Item "$env:WINDIR\Prefetch\*" -Force -Recurse -ErrorAction SilentlyContinue

:: Windows Temp
powershell Remove-Item "$env:WINDIR\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue

:: AppData Local Temp
powershell Remove-Item "$env:LOCALAPPDATA\Temp\*" -Force -Recurse -ErrorAction SilentlyContinue

:: AppData Local CrashDumps
powershell Remove-Item "$env:LOCALAPPDATA\CrashDumps\*" -Force -Recurse -ErrorAction SilentlyContinue

:: AppData Local D3DSCache
powershell Remove-Item "$env:LOCALAPPDATA\D3DSCache\*" -Force -Recurse -ErrorAction SilentlyContinue

:: NVIDIA
powershell if (Test-Path -Path "$env:PROGRAMFILES\NVIDIA` Corporation\Installer2"){ Remove-Item "$env:PROGRAMFILES\NVIDIA` Corporation\Installer2\*" -Force -Recurse -ErrorAction SilentlyContinue }

DEL /F /S /Q %SYSTEMDRIVE%\*.log
DEL /F /S /Q %SYSTEMDRIVE%\*.bak
DEL /F /S /Q %SYSTEMDRIVE%\*.tmp
DEL /F /S /Q %SYSTEMDRIVE%\*.chk
DEL /F /S /Q %SYSTEMDRIVE%\*.old

pause > nul
exit
