#!/bin/bash

# Create the virtual env
echo -e "Creating virtual environment..."
mkdir env
python -m venv env

# Create $HOME/.local/bin if needed
if [ ! -d "$HOME/.local/bin" ]; then
  echo -e "Creating $HOME/.local/bin/ directory..."
  mkdir -p "$HOME/.local/bin"
fi

# Activate the env
SCRIPT_DIR="$(dirname "$(realpath "$0")")"
#source "$SCRIPT_DIR/env/bin/activate"

# Update pip
$SCRIPT_DIR/env/bin/pip install --upgrade pip

# Install dependencies
echo -e "Installing dependencies..."
$SCRIPT_DIR/env/bin/pip install -r requirements.txt

# Make sure everything is executable and link it
chmod +x multiclip.sh
echo -e "Creating symbolic link in $HOME/.local/bin"
ln -s "$(pwd)/multiclip.sh" "$HOME/.local/bin/multiclip"

#deactivate

echo -e "Setup complete. You can now run multiclip from the command line."
