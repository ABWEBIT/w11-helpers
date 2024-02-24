@echo off

:: AllJoyn Router Service
sc config AJRouter start= disabled

:: BitLocker Drive Encryption Service
sc config BDESVC start= disabled

:: Connected User Experiences and Telemetry
sc config DiagTrack start= disabled

:: Downloaded Maps Manager
sc config MapsBroker start= disabled

:: Geolocation Service
sc config lfsvc start= disabled

:: Netlogon
sc config Netlogon start= disabled

:: Optimize drives
sc config defragsvc start= disabled

:: Parental Controls
sc config WpcMonSvc start= disabled

:: Phone Service
sc config PhoneSvc start= disabled

:: Radio Management Service
sc config RmSvc start= disabled

:: Remote Registry
sc config RemoteRegistry start= disabled

:: Retail Demo Service
sc config RetailDemo start= disabled

:: Routing and Remote Access
sc config RemoteAccess start= disabled

:: SysMain
sc config SysMain start= disabled

:: WalletService
sc config WalletService start= disabled

:: Windows Biometric Service
sc config WbioSrvc start= disabled

:: Windows Media Player Network Sharing Service
sc config WMPNetworkSvc start= disabled

:: Windows Mobile Hotspot Service
sc config icssvc start= disabled

:: Windows Search
sc config WSearch start= disabled

pause > nul
exit
