#! /bin/bash

# Remove soft link 'checkfile' from /bin/ directory.
sudo rm /bin/checkfile

# Remove 'checkfile.sh' script from /usr/bin/ directory.
sudo rm /usr/bin/checkfile.sh

# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
