#!/bin/bash
wget -q -O - https://tjend.github.io/repo_terraform/repo_terraform.key | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://tjend.github.io/repo_terraform stable main" >> /etc/apt/sources.list.d/terraform.list'
sudo apt-get update
sudo apt-get install terraform

# sudo apt-get install unzip
# wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
# unzip terraform__0.12.24_linux_amd64.zip
# sudo mv terraform /usr/local/bin/
# terraform --version 
