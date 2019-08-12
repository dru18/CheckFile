#! /bin/bash

# Remove soft link 'simplewatch' from /bin/ directory.
sudo rm /bin/simplewatch

# Remove 'simplewatch.sh' script from /usr/bin/ directory.
sudo rm /usr/bin/simplewatch.sh

# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
