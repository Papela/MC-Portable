@echo off
color 4
title Desinstalando Minecraft...
cls
@echo Desinstalando Minecraft...
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
del /F /Q Minecraft
cd "C:\Users\%username%\"
rename PapelaMC TempDeleteMe
msg * /SERVER:%computername% Minecraft Portable se ha desinstalado correctamente.
del /F /Q TempDeleteMe