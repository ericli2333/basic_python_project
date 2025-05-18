#!/bin/bash
PROJECT_DIR=$(pwd)
echo "PROJECT_DIR=$PROJECT_DIR" > .env
echo "export PROJECT_DIR=$PROJECT_DIR" > .bash_profile
echo "Enviroment variable：PROJECT_DIR=$PROJECT_DIR"

PYTHON_PATH=$(pwd)
echo "PYTHONPATH=$PYTHON_PATH" >> .env
echo "export PYTHONPATH=$PYTHON_PATH" >> .bash_profile
echo "Enviroment variable：PYTHONPATH=$PYTHON_PATH"

pre-commit install