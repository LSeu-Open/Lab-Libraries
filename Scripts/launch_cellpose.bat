@echo off
REM This script opens Anaconda Prompt, activates the cellpose environment, and launches the Cellpose GUI.

REM Set the path to the Anaconda installation directory
set ANACONDA_PATH=C:\Users\your_usernameAppData\Local\anaconda3

REM Set the path to the Anaconda Scripts directory
set SCRIPTS_PATH=%ANACONDA_PATH%\Scripts

REM Activate the Anaconda environment
call %SCRIPTS_PATH%\activate.bat %ANACONDA_PATH%

REM Activate the cellpose environment
call conda activate cellpose

REM Launch the Cellpose GUI
python -m cellpose

REM Pause to keep the window open (optional)
pause
