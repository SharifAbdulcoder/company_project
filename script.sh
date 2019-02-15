#!/bin/bash

sudo su
yum install git -y
sudo amazon-linux-extras install docker -y
sudo yum install docker -yclear

sudo service docker start
sudo usermod -a -G docker ec2-user

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
# sudo yum install -y yum-utils device-mapper-persistent-data lvm2
# sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
# sudo yum-config-manager --enable docker-ce-nightly
# sudo yum-config-manager --enable docker-ce-test
# sudo yum-config-manager --disable docker-ce-nightly
# sudo yum install docker-ce docker-ce-cli containerd.io
# sudo systemctl start docker
