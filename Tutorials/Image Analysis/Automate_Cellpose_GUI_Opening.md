# Automate Cellpose GUI Opening

Launching the Cellpose GUI normally takes two manual steps each time: activate the
Python environment, then start Cellpose. This tutorial shows how to wrap those steps in
a small script so you can open the GUI by running a single file.

> [!NOTE]
> This tutorial assumes Python is already installed and that Cellpose lives in a virtual
> environment named `cellpose` (see
> [Mastering Cellpose](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Mastering_Cellpose.md)
> for installation). Adjust the environment path in the script if yours differs.

You can either copy the scripts below or download them directly:

- Windows: [launch_cellpose.bat](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.bat)
- macOS / Linux: [launch_cellpose.sh](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.sh)

## Windows (.bat)

1. Open Notepad.
2. Copy the script below and paste it in.
3. Save it: **File > Save As**, set **Save as type** to **All Files**, and name it
   `launch_cellpose.bat`.
4. Double-click `launch_cellpose.bat` to run it.

```batch
@echo off
REM Activate the virtual environment and launch the Cellpose GUI.

REM Path to the virtual environment directory
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

REM Keep the window open after Cellpose closes
pause
```

## macOS / Linux (.sh)

1. Open a terminal and run `nano launch_cellpose.sh`.
2. Copy the script below and paste it in.
3. If your environment is not named `cellpose` or is in another location, edit the
   `ENV_NAME` line to match.
4. Save and exit nano: `Ctrl + O`, `Enter`, then `Ctrl + X`.
5. Make the script executable: `chmod +x launch_cellpose.sh`.
6. Run it: `./launch_cellpose.sh`.

```bash
#!/bin/bash
# Activate the virtual environment and launch the Cellpose GUI.

# Name (or path) of the virtual environment directory
ENV_NAME=cellpose

# Activate the virtual environment
source "$ENV_NAME/bin/activate"

# Launch the Cellpose GUI
echo "Launching Cellpose GUI..."
python -m cellpose

# Keep the terminal open after Cellpose closes
read -p "Press [Enter] to exit..."
```

> [!TIP]
> On macOS you can give the script a `.command` extension instead of `.sh` so it runs
> when double-clicked in Finder.
