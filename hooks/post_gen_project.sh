#!/bin/bash

set -e
set -x

pyenv_version_dir=~/.pyenv/versions/{{cookiecutter.package_name}}

if [ ! -d "${pyenv_version_dir}" ]; then
    echo "Creating pyenv virtualenv {{cookiecutter.package_name}}"
    pyenv virtualenv 3.6.1 {{cookiecutter.package_name}}
fi

original_pyenv=$PYENV_VERSION
export PYENV_VERSION={{cookiecutter.package_name}}

pwd
$(pyenv which pip) install -r ./requirements.txt

tox

export PYENV_VERSION=$original_pyenv

git init
git add -A
git commit -m "Initial commit of {{cookiecutter.package_name}} - python package boilerplate"
