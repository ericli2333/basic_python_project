#!/bin/bash

PROJECT_DIR=$(pwd)

echo "PROJECT_DIR=$PROJECT_DIR" > .env

BASH_PROFILE_CONTENT="export PROJECT_DIR=$PROJECT_DIR"

PYTHON_PATH=$(pwd)

PYTHONPATH_LOGIC="
if [ -z \"\$PYTHONPATH\" ]; then
    export PYTHONPATH=$PYTHON_PATH
else
    export PYTHONPATH=\$PYTHONPATH:$PYTHON_PATH
fi
"

BASH_PROFILE_CONTENT="$BASH_PROFILE_CONTENT$PYTHONPATH_LOGIC"

echo "$BASH_PROFILE_CONTENT" > .bash_profile

echo "Environment variable：PROJECT_DIR=$PROJECT_DIR"
if [ -z "$PYTHONPATH" ]; then
    echo "Environment variable：PYTHONPATH=$PYTHON_PATH"
else
    NEW_PYTHONPATH="$PYTHONPATH:$PYTHON_PATH"
    echo "Environment variable：PYTHONPATH=$NEW_PYTHONPATH"
fi

pip install -r requirement.txt -q
pre-commit install