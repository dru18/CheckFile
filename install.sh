#! /bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make 'checkfile.sh' executable.
sudo chmod 755 checkfile.sh

# Copy 'checkfile.sh' to /usr/bin/ directory.
sudo cp checkfile.sh /usr/bin/

# Make soft link for /usr/bin/checkfile.sh to /bin/checkfile
sudo ln -s /usr/bin/checkfile.sh /bin/checkfile
