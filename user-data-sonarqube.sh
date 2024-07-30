#!/bin/bash
# Sonarqube Installation
sudo apt-get update -y

#sudo usermod -aG sudo ubuntu

sudo apt install openjdk-17-jre -y
sudo apt install unzip -y

sudo -u ubuntu wget -O /home/ubuntu/sonarqube.zip \
  https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.4.0.87286.zip

sudo -u ubuntu unzip /home/ubuntu/sonarqube.zip -d /home/ubuntu/sonarqube

#chmod +x sonarqube

cd /home/ubuntu/sonarqube/sonarqube-10.4.0.87286/bin/linux-x86-64/
sudo -u ubuntu ./sonar.sh start
#sudo /home/ubuntu/sonarqube/sonarqube-9.9.0.65466/bin/linux-x86-64/sonar.sh start

sudo hostnamectl set-hostname sonarqube
/bin/bash


