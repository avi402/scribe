#!/bin/bash
sudo apt-get -y update
# Install OpenJDK 8
sudo apt-get -y install openjdk-8-jdk
# Install Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y install jenkins
sudo wget -qO - https://api.bintray.com/orgs/jfrog/keys/gpg/public.key | sudo apt-key add -
echo "deb https://jfrog.bintray.com/artifactory-debs focal main" | sudo tee /etc/apt/sources.list.d/jfrog.list
sudo apt update
sudo apt install jfrog-artifactory-oss
sudo systemctl start artifactory.service
sudo systemctl enable artifactory.service
