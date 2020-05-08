#!/bin/bash

set -e
wget https://download.visualstudio.microsoft.com/download/pr/d731f991-8e68-4c7c-8ea0-fad5605b077a/49497b5420eecbd905158d86d738af64/dotnet-sdk-3.1.100-linux-x64.tar.gz
wget https://download.visualstudio.microsoft.com/download/pr/30ab052d-dbb6-4bce-8a44-a831034589ed/7ffaad695afb7ccd778b0d3fc1c89f50/dotnet-runtime-3.0.1-linux-x64.tar.gz
mkdir -p /home/ec2-user/dotnet && tar zxf dotnet-runtime-3.0.1-linux-x64.tar.gz -C /home/ec2-user/dotnet
export DOTNET_ROOT=/home/ec2-user/dotnet
export PATH=$PATH:/home/ec2-user/dotnet
export DOTNET_CLI_HOME=/home/ec2-user/dotnet
export HOME=/home/ec2-user  

tar zxf dotnet-sdk-3.1.100-linux-x64.tar.gz -C /home/ec2-user/dotnet
dotnet tool install --global Microsoft.dotnet-interactive
export PATH=$PATH:/home/ec2-user/dotnet/.dotnet/tools
dotnet interactive jupyter install
jupyter kernelspec list

touch /etc/profile.d/jupyter-env.sh
echo "export PATH='$PATH:/home/ec2-user/dotnet/.dotnet/tools:/home/ec2-user/dotnet'" >> /etc/profile.d/jupyter-env.sh

touch /etc/profile.d/dotnet-env.sh
echo "export DOTNET_ROOT='/home/ec2-user/dotnet'" >> /etc/profile.d/dotnet-env.sh
sudo chmod -R 777 /home/ec2-user/.dotnet

initctl restart jupyter-server --no-wait
