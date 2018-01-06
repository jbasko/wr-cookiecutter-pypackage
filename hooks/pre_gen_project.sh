#!/bin/bash

set -e

pyenv_version_dir=~/.pyenv/versions/{{cookiecutter.package_name}}
echo "Checking project pyenv version existence at ${pyenv_version_dir}"

if [ -d "$pyenv_version_dir" ]; then
    echo "Project pyenv version {{cookiecutter.package_name}} already exists."
    read -p "Do you want to uninstall it? [y/n]: " choice
    if [ "${choice}" == "y" ]; then
        pyenv uninstall {{cookiecutter.package_name}}
    fi
fi
