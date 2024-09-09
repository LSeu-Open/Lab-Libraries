# Automate Cellpose GUI Opening

## Why Automate the Cellpose GUI Opening ?

This tutorial will show you how to automate the launch of the Cellpose GUI using Python's virtual environment (venv). By following these steps, you can **skip the tedious process of activating the environment and launching Cellpose manually.**

Instead, **simply double-click on the script and the Cellpose GUI will open automatically**, ready for use.

> [!CAUTION]
> This tutorial assumes you have already installed Python on your system.

> [!IMPORTANT]
> For **Windows users**, download the batch script from [Windows Script (.bat)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.bat). For **macOS/Linux users**, download the shell script from [macOS/Linux Script (.sh)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.sh).
>
> **For desktop users, click the three dots (...) in the top-right corner and select 'Download'. For mobile devices, tap the ⋯ menu and choose 'Download'.**

## Automate GUI Opening on Windows

To automate the launch of the Cellpose GUI in Windows, you'll need to create a script that replicates the manual process. This can be achieved by writing a simple batch file (.bat) that instructs your computer to perform the necessary actions automatically.

Steps to Create and Use the Batch Script :

1. **Open Notepad**
2. **Copy the script** below and paste it into Notepad.
3. **Save the Script** as a bat file :

- Click File > Save As.
- In the Save as type dropdown, select All Files.
- Name the file launch_cellpose.bat and save it to a convenient location.

4. To **Run the Script** navigate to the location where you saved the script and Double-click launch_cellpose.bat to run it.

```bash
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
```

## Automate GUI Opening on MacOS/Linux

To automate the launch of the Cellpose GUI, you'll need to create a script that replicates the manual process. This can be achieved by writing a simple shell script (e.g., .sh or .bash) that instructs your computer to perform the necessary actions automatically.

Alternatively, you can use a shortcut on macOS or create an executable file with a .command extension for a more user-friendly experience.

1. **Open any text editor** like nano, vim, or gedit. For simplicity, let's use nano.
2. **Open a terminal** and type `nano launch_cellpose.sh`
3. **Copy the script below** and paste it into the text editor.
4. **Modify the Script** Replace /home/yourusername/anaconda3 with the **actual path to your Anaconda installation directory.**
5. **Save the Script** In nano, press Ctrl + O to write out the file, then press Enter to confirm. Press Ctrl + X to exit nano.
6. To **Make the Script Executable** In the terminal, navigate to the directory where you saved the script and type `chmod +x launch_cellpose.sh`
7. **Execute the script** by typing in the terminal :  `./launch_cellpose.sh`

```bash
#!/bin/bash
# This script activates the virtual environment and launches the Cellpose GUI.

# Set the path to the virtual environment directory
ENV_NAME=cellpose

# Activate the virtual environment
source $ENV_NAME/bin/activate

# Launch the Cellpose GUI
echo "Launching Cellpose GUI..."
python -m cellpose

# Keep the terminal open (optional)
read -p "Press [Enter] key to exit..."
```
