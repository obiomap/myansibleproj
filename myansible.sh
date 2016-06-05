#!/bin/bash

HOSTNAME=10.0.0.236
DATA=""
RETRY=15
nohup ansible-playbook sandbox.yml 
while (ps -A | grep -v grep | grep sandbox > /dev/null); do sleep 1; done
sleep 50
ssh-keygen -f "/home/ubuntu/.ssh/known_hosts" -R 10.0.0.236
ansible-playbook apache2.yml
