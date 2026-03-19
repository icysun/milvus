#!/bin/bash

# Migrating to conan 2.x
sudo pip3 install conan

# Check if conan 2.x is installed and set it as the default
if conan --version | grep -q '2.'; then
    echo 'Conan 2.x is already installed, setting as default.'
else
    echo 'Conan 2.x is not installed, installing now...'
    sudo pip3 install conan
fi

# Continue with the rest of the installation script
# ... (rest of the script)