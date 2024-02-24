@echo off
title Service Remover
setlocal

SET /P SeriveName="Enter Service Name: "
net stop %SeriveName%
sc delete %SeriveName%

pause > nul
exit
