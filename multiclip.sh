#!/bin/bash
# Wrapper script for the multiclip.py program

# Get the realpath to the script directory
SCRIPT_DIR="$(dirname "$(realpath "$0")")"

#source "$SCRIPT_DIR/env/bin/activate"

$SCRIPT_DIR/env/bin/python "$SCRIPT_DIR/multiclip.py" "$@"
