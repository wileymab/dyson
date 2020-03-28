#!/usr/bin/env bash

# Install SHML
sudo bash -c 'curl -L https://raw.githubusercontent.com/odb/shml/1.1.0/shml.sh -o /usr/local/bin/shml && chmod +x /usr/local/bin/shml'


# Install dyson on the bashrc file
echo "source ~/.dyson/environments/bashrc.sh" >> ~/.bashrc
