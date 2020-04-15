#!/bin/bash
sudo apt-add-repository ppa:ansible/ansible -y && sudo apt update
sudo apt install ansible python3-pip python-pip -y
# sudo pip install boto
git clone https://github.com/gaearaz/DevOps-RampUp-Res.git /home/ubuntu/rampup/