#!/bin/bash
# Wrapper script for the multiclip.py program

source "$(dirname "$0")/env/bin/activate"

python "$(dirname "$0")/multiclip.py" "$@"
