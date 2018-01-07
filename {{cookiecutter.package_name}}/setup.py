#!/usr/bin/env python
# -*- coding: utf-8 -*-

import codecs
import os

from setuptools import setup


def read(fname):
    file_path = os.path.join(os.path.dirname(__file__), fname)
    return codecs.open(file_path, encoding='utf-8').read()


setup(
    name='{{cookiecutter.package_name}}',
    version=read('{{cookiecutter.package_directory}}/__init__.py').split('\n')[0].split('=', 1)[1].strip().strip("'"),
    author='{{cookiecutter.package_author}}',
    author_email='{{cookiecutter.package_email}}',
    maintainer='{{cookiecutter.package_author}}',
    maintainer_email='{{cookiecutter.package_email}}',
    license='MIT',
    url='{{cookiecutter.package_url}}',
    description='{{cookiecutter.package_name}}',
    long_description=read('README.rst'),
    packages=['{{cookiecutter.package_directory}}'],
    install_requires=[],
    classifiers=[
        'Development Status :: 4 - Beta',
        'Intended Audience :: Developers',
        'Programming Language :: Python',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.5',
        'Programming Language :: Python :: 3.6',
        'License :: OSI Approved :: MIT License',
    ],
)
