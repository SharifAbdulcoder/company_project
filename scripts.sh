#!/bin/bash

sudo git clone https://github.com/saruwka/magicball
sudo cd /home/ec2-user/magicball/magic8ball_1/audition-app
sudo /docker-compose build && docker-compose up -d

# sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# sudo yum-config-manager --enable docker-ce-nightly
# sudo yum-config-manager --enable docker-ce-test
# sudo yum-config-manager --disable docker-ce-nightly
# sudo yum install docker-ce docker-ce-cli containerd.io
# sudo systemctl start docker
