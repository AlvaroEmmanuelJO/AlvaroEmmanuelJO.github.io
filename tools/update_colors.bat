@echo off
setlocal enabledelayedexpansion

REM Lista de archivos CSS a actualizar
set "css_files=css\main.css css\owl.theme.css css\responsive.css"

REM Color a reemplazar y nuevo color
set "old_color=#7beec7"
set "new_color=#001489"

REM Procesar cada archivo CSS
echo Actualizando archivos CSS...
for %%f in (%css_files%) do (
    echo Procesando %%f...
    powershell -Command "(Get-Content '%%f') -replace '%old_color%', '%new_color%' | Set-Content '%%f'"
)

echo Actualización completada!
pause
