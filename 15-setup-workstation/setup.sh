#!/bin/bash

# install docker
sudo yum update -y
sudo yum -y install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chmod 666 /var/run/docker.sock

# setup k8s
sudo curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
sudo chmod +x kubectl
sudo mv kubectl /usr/local/bin

# setup eksctl
sudo curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_Linux_amd64.tar.gz"
sudo tar -xzf eksctl_Linux_amd64.tar.gz -C /tmp && rm -f eksctl_Linux_amd64.tar.gz
sudo mv /tmp/eksctl /usr/local/bin
