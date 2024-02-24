@echo off
title Service Remover

net stop ServiceName
sc delete ServiceName

pause > nul
exit
