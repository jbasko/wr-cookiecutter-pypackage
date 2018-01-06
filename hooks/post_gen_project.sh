#!/bin/bash

set -e
set -x

pyenv virtualenv 3.6.1 {{cookiecutter.package_name}}

original_pyenv=$PYENV_VERSION
export PYENV_VERSION={{cookiecutter.package_name}}

pyenv versions

export PYENV_VERSION=$original_pyenv
