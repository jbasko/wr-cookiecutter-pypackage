#!/bin/bash

set -e

pyenv_version_dir=~/.pyenv/versions/{{cookiecutter.venv_name}}
echo "Checking project pyenv version existence at ${pyenv_version_dir}"

if [ -d "$pyenv_version_dir" ]; then
    echo "Project pyenv version {{cookiecutter.venv_name}} already exists."
    read -p "Do you want to uninstall it? [y/n]: " choice
    if [ "${choice}" == "y" ]; then
        pyenv uninstall {{cookiecutter.venv_name}}
    fi
fi
