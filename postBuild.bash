#!/bin/bash
# This file contains bash commands that will be executed at the end of the container build process,
# after all system packages and programming language specific package have been installed.
#
# Note: This file may be removed if you don't need to use it
jupyter labextension disable "@jupyterlab/apputils-extension:announcements"

cd /workspace
git clone https://github.com/huggingface/diffusers && \
    cd diffusers && \
    pip install -e .
cd -

jupyter labextension disable "@jupyterlab/apputils-extension:announcements"
jupyter labextension disable "@jupyterlab/apputils-extension:announcements"