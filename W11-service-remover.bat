@echo off
title Service Remover
setlocal

SET /P ServiceName="Enter Service Name: "
net stop %ServiceName%
sc delete %ServiceName%

pause > nul
exit
