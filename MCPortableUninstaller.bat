@echo off
color 4
title Desinstalando Minecraft...
cls
@echo Desinstalando Minecraft...
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
rename Minecraft Deleted
rd /s /Q Deleted
cd "C:\Users\%username%\Desktop\"
del MCP.lnk
timeout /t 1
cd "C:\PapelaMC\"
rename PapelaMC TempDeleteMe
timeout /t 1
rd /S /Q TempDeleteMe
msg * /SERVER:%computername% Minecraft Portable se ha desinstalado correctamente.
cd "C:\"
rd /S /Q PapelaMC
exit
