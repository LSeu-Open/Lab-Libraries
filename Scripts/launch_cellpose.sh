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
