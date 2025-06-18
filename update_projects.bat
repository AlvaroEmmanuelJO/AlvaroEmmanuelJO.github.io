@echo off
setlocal enabledelayedexpansion

REM Directorio de proyectos
set "projects_dir=projects"

REM Lista de archivos de proyecto
set "files=project1.html project2.html project3.html project4.html project5.html project6.html project7.html project8.html project9.html project10.html project11.html project12.html"

REM Color a reemplazar y nuevo color
set "old_color=#7beec7"
set "new_color=#001489"

REM Procesar cada archivo
echo Actualizando los archivos de proyecto...
for %%f in (%files%) do (
    echo Procesando %%f...
    powershell -Command "(Get-Content '%projects_dir%\%%f') -replace '%old_color%', '%new_color%' | Set-Content '%projects_dir%\%%f'"
)

echo Actualización completada!
pause
