@echo off
title AwesomeDPT-WindowsOptima Kernel Initialization...
:predefines
SetLocal EnableExtensions EnableDelayedExpansion
chcp 1251
color 0B
cls
title AwesomeDPT-WindowsOptima
:logo
type Logo.ascii
pause>nul
cls
title AwesomeDPT-WindowsOptima Working...
:executing
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0Win10.ps1" -include "%~dp0Win10.psm1" -preset "%~dpn0.preset"

rem The following variant redirects output also to a file
rem Usage: Default.cmd foo.log
rem Works only if already started as admin (RequireAdmin in .preset can't be used)
rem powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "&"'%~dp0Win10.ps1' -include '%~dp0Win10.psm1' -preset '%~dpn0.preset' "2>&1 | Tee-Object" -FilePath '%1'