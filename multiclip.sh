#!/bin/bash
# Wrapper script for the multiclip.py program

# Get the realpath to the script directory
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

source "$SCRIPT_DIR/env/bin/activate"

python "$SCRIPT_DIR/multiclip.py" "$@"
