# Automate Cellpose GUI Opening (NEED TO BE UPDATED)

## Why Automate the Cellpose GUI Opening ?

This tutorial will show you how to automating the launch of the Cellpose GUI using the Command Line Interface (CLI). By following these steps, you can **skip the tedious process of activating the environment and launching cellpose from the Anaconda Prompt.**

Instead, **simply double-click on the script and the Cellpose GUI will open automatically**, ready for use.

> [!CAUTION]
> This tutorial assumes you have already installed Cellpose using Conda, as described in [Mastering Cellpose: From Installation to Advanced Features](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Tutorials/Image%20Analysis/Mastering_Cellpose.md) tutorial.

> [!IMPORTANT]
> For **Windows users**, download the batch script from [Windows Script (.bat)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.bat). For **macOS/Linux users**, download the shell script from [macOS/Linux Script (.sh)](https://github.com/LSeu-Open/Lab-Libraries/blob/main/Scripts/launch_cellpose.sh).
>
> **For desktop users, click the three dots (...) in the top-right corner and select 'Download'. For mobile devices, tap the ⋯ menu and choose 'Download'.**

## Automate GUI Opening on Windows

To automate the launch of the Cellpose GUI in Windows, you'll need to create a script that replicates the manual process. This can be achieved by writing a simple batch file (.bat) that instructs your computer to perform the necessary actions automatically.

Steps to Create and Use the Batch Script : 

1. **Open Notepad**
2. **Copy the script** below and paste it into Notepad.
3. **Modify the Script** to replace C:\Users\YourUsername\Anaconda3 with the **actual path to your Anaconda installation directory.**
4. **Save the Script** as a bat file :

- Click File > Save As.
- In the Save as type dropdown, select All Files.
- Name the file launch_cellpose.bat and save it to a convenient location.

5. To **Run the Script** navigate to the location where you saved the script and Double-click launch_cellpose.bat to run it.

```
@echo off
REM This script opens Anaconda Prompt, activates the cellpose environment, and launches the Cellpose GUI.

REM Set the path to the Anaconda installation directory
set ANACONDA_PATH=C:\Users\YourUsername\Anaconda3

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
```

***Explanation of the Script :***

- **@echo off**: This command prevents the script from displaying each command in the command prompt window.
- **REM**: This stands for "remark" and is used to add comments to the script.
- **set ANACONDA_PATH=C:\Users\YourUsername\Anaconda3**: This sets the path to your Anaconda installation directory.
- **set SCRIPTS_PATH=%ANACONDA_PATH%\Scripts**: This sets the path to the Anaconda Scripts directory.
- **call %SCRIPTS_PATH%\activate.bat %ANACONDA_PATH%**: This activates the base Anaconda environment.
- **call conda activate cellpose**: This activates the cellpose environment.
- **python -m cellpose**: This launches the Cellpose GUI.
- **pause**: This command keeps the command prompt window open after the script finishes, allowing you to see any output or errors.

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

```
#!/bin/bash
# This script activates the cellpose environment and launches the Cellpose GUI.

# Set the path to the Anaconda installation directory
ANACONDA_PATH="/home/yourusername/anaconda3"

# Activate the base Anaconda environment
source $ANACONDA_PATH/etc/profile.d/conda.sh

# Activate the cellpose environment
conda activate cellpose

# Launch the Cellpose GUI
python -m cellpose

# Keep the terminal open (optional)
read -p "Press [Enter] key to exit..."
```

***Explanation of the Script :***

- **#!/bin/bash**: This shebang line tells the system to use the Bash shell to interpret the script.
- **ANACONDA_PATH="/home/yourusername/anaconda3"**: This sets the path to your Anaconda installation directory.
- **source $ANACONDA_PATH/etc/profile.d/conda.sh**: This sources the Anaconda initialization script to set up the conda command.
- **conda activate cellpose**: This activates the cellpose environment.
- **python -m cellpose**: This launches the Cellpose GUI.
- **read -p "Press [Enter] key to exit..."**: This keeps the terminal open after the script finishes, allowing you to see any output or errors.
