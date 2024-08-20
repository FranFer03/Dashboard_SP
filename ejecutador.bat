@echo off
REM Define el nombre del entorno virtual
set VENV_NAME=myenv

REM Cambia al directorio donde se encuentra el script concatenar.py
cd /d "%~dp0"

REM Crea un entorno virtual si no existe
if not exist "%VENV_NAME%\Scripts\activate.bat" (
    echo Creando entorno virtual...
    python -m venv %VENV_NAME%
)

REM Activa el entorno virtual
echo Activando el entorno virtual...
call "%VENV_NAME%\Scripts\activate.bat"

REM Instala las dependencias necesarias
echo Instalando dependencias...
pip install --upgrade pip
pip install pandas numpy

REM Ejecuta el script concatenar.py
echo Ejecutando el script...
python concatenar.py

REM Desactiva el entorno virtual
echo Desactivando el entorno virtual...
deactivate

REM Pausa para que la ventana no se cierre automáticamente (opcional)
pause

