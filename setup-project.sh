#!/usr/bin/env bash

# Fail on error
set -e

# Name of the virtual environment directory
VENV_DIR=".venv"

echo "Creating virtual environment in ${VENV_DIR}..."
python3 -m venv ${VENV_DIR}

echo "Activating virtual environment..."
# On Unix:
source ${VENV_DIR}/bin/activate

echo "Upgrading pip..."
pip install --upgrade pip

echo "Installing Requirements..."
pip install -r requirements.txt

# pip freeze > requirements.txt

echo "Done! Virtual environment is set up and ready."
echo "To activate it later: source ${VENV_DIR}/bin/activate"
