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
