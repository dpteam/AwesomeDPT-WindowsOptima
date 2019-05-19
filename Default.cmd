@echo off
title AwesomeDPT-WindowsOptima Kernel Initialization...
:predefines
SetLocal EnableExtensions EnableDelayedExpansion
chcp 65001
color 0B
cls
title AwesomeDPT-WindowsOptima
:logo
type Logo.ascii
pause>nul
cls
title AwesomeDPT-WindowsOptima Working...
:executing
chcp 866 
powershell.exe -NoProfile -ExecutionPolicy Bypass -Command "&"'%~dp0Win10.ps1' -include '%~dp0Win10.psm1' -preset '%~dpn0.preset' "2>&1 | Tee-Object" -FilePath '%1'