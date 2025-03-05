@echo off
title NVIDIA Cleaner

powershell -NoProfile -Command ^
  $Installer = $env:PROGRAMFILES+'\NVIDIA Corporation\Installer2'; ^
  $approval = Read-Host -Prompt 'Clear NVIDIA Installer - y / n'; ^
  if ((Test-Path -Path $Installer) -and ($approval -eq 'y')){Remove-Item $Installer"\*" -Force -Recurse -ErrorAction SilentlyContinue}; ^
  Remove-Variable -Name Installer, approval

powershell -NoProfile -Command ^
  $DXCache = $env:USERPROFILE+'\AppData\LocalLow\NVIDIA\DXCache'; ^
  $approval = Read-Host -Prompt 'Clear NVIDIA DXCache - y / n'; ^
  if ((Test-Path -Path $DXCache) -and ($approval -eq 'y')){Remove-Item $DXCache"\*" -Force -Recurse -ErrorAction SilentlyContinue}; ^
  Remove-Variable -Name DXCache, approval

exit
