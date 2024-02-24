@echo off
title IP Renew and Flush DNS
ipconfig /release
ipconfig /flushdns
ipconfig /renew

exit
