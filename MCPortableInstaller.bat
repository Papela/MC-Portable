@echo off
color a
title Minecraft Portable Installer
cls
@echo Instalando Minecraft (Sin permisos de Administrador)...
@echo Este proceso puede tardar hasta 5 minutos. Te recomendamos que no toques nada hasta que finalice la instalacion.
timeout /t 10
cd "C:\"
mkdir PapelaMC
attrib +H PapelaMC
cd "C:\PapelaMC\"
curl.exe -o nircmd.zip https://download1491.mediafire.com/6jbz2eazlbwg/q7c1entenia3o5h/nircmd.zip
curl.exe -o PapelaMC.zip https://download938.mediafire.com/89g07o8suc8g/qnafv8wfi1k01ya/PapelaMC.zip
curl.exe -o MCPortableUninstaller.bat https://raw.githubusercontent.com/Papela/MC-Portable/main/MCPortableUninstaller.bat
timeout /t 1
tar -xf nircmd.zip
timeout /t 1
tar -xf PapelaMC.zip
timeout /t 5
del /F /Q PapelaMC.zip
del /F /Q nircmd.zip
cd "C:\"
cacls PapelaMC /E /G %username%:F
cd "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\"
mkdir Minecraft
cd "C:\PapelaMC\nircmd\
nircmd.exe shortcut "C:\PapelaMC\PapelaMC\MultiMinecraft_Deluxe.exe" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Minecraft\" "Minecraft - Papela"
nircmd.exe shortcut "C:\PapelaMC\MCPortableUninstaller.bat" "C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Minecraft\" "Desinstalar Minecraft Portable - Papela"
cd "C:\PapelaMC\"
del /F /Q nircmd
msg * /SERVER:%computername% Minecraft Portable - Papela se ha instalado correctamente.
exit