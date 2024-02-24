@echo off
title IP Renew and Fluch DNS
ipconfig /release
ipconfig /flushdns
ipconfig /renew

exit
