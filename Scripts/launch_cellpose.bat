@echo off
REM This script activates the virtual environment and launches the Cellpose GUI.

REM Set the path to the virtual environment directory
set VENV_PATH=.\cellpose

REM Activate the virtual environment
call %VENV_PATH%\Scripts\activate
if %errorlevel% neq 0 (
    echo Failed to activate virtual environment.
    pause
    exit /b 1
)

REM Launch the Cellpose GUI
echo Launching Cellpose GUI...
python -m cellpose

REM Pause to keep the window open (optional)
pause
