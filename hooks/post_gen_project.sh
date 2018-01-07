#!/bin/bash

set -e
set -x

pyenv_version_dir=~/.pyenv/versions/{{cookiecutter.venv_name}}

if [ ! -d "${pyenv_version_dir}" ]; then
    echo "Creating pyenv virtualenv {{cookiecutter.venv_name}}"
    pyenv virtualenv 3.6.1 {{cookiecutter.venv_name}}
fi

original_pyenv=$PYENV_VERSION
export PYENV_VERSION={{cookiecutter.venv_name}}

pwd
$(pyenv which pip) install -r ./requirements.txt

tox -e py36

export PYENV_VERSION=$original_pyenv

git init
git add -A
git commit -m "Initial commit of {{cookiecutter.package_name}} - python package boilerplate"
