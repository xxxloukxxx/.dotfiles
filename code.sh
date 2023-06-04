#!/bin/bash
sudo apt -y install gnupg2 software-properties-common apt-transport-https curl
curl -sSL https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove
sudo apt -y install code
sudo apt update && sudo apt -y full-upgrade && sudo apt -y autoremove
