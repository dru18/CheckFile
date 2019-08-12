#! /bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make 'simplewatch.sh' executable.
sudo chmod 755 simplewatch.sh

# Copy 'simplewatch.sh' to /usr/bin/ directory.
sudo cp simplewatch.sh /usr/bin/

# Make soft link for /usr/bin/simplewatch.sh to /bin/simplewatch
sudo ln -s /usr/bin/simplewatch.sh /bin/simplewatch
