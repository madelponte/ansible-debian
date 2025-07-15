#!/usr/bin/bash
sudo apt install -y ansible
ansible-galaxy install geerlingguy.docker
#ansible-playbook -b -u root -c local -i "127.0.0.1," $1
ansible-playbook -b -u mdelponte --ask-pass --ask-become-pass -i "$1," $2.yml

