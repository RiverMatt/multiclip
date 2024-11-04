#!/bin/bash

# Create the env if needed
if [ ! -d "env" ]; then
  echo -e "Creating virtual environment..."
  mkdir env
  python -m venv env
fi

# Activate the env
source env/bin/activate

# Update pip
pip install --upgrade pip

# Install dependencies
echo -e "Installing dependencies..."
pip install -r requirements.txt

# Make sure everything is executable and link it
chmod +x multiclip.sh
echo -e "Creating symbolic link in $HOME/.local/bin"
ln -s "$(pwd)/multiclip.sh" "$HOME/.local/bin/multiclip"

echo -e "Setup complete. You can now run multiclip from the command line."
