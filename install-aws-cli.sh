#!/bin/bash

echo "This script for installing AWS Cli, latest version on linux"

echo "Please run using sudo"

apt update

apt install curl -y 

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update

echo "Installation succeeded, lets configure AWS, please make sure that you have access key and access key id to be used in [default profile]"

aws configure 
