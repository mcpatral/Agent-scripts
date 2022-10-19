#!/bin/bash
#Author: Kelvin
#Date: October 19 2020
#Description: Jenkins installation:


#Jenkins is an open-source, Java-based automation server that offers an easy way to set up a continuous integration and continuous delivery (CI/CD) pipeline.
#Continuous integration (CI) is a DevOps practice in which team members regularly commit their code changes to the version control repository, after which automated builds and tests are run. 
#Continuous delivery (CD) is a series of practices where code changes are automatically built, tested and deployed to production.
#Since Jenkins is a Java application, we first need to install Java on our system. To do that, run the command: (make sure it is complete!): 
sudo yum install java-11-openjdk-devel -y
# Enable the Jenkins repository
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
# Install the latest stable version of Jenkins
sudo yum install jenkins -y
#After the installation process is completed, we need to start the service :
sudo systemctl start jenkins
#Check the status with: 
sudo systemctl status jenkins
#Also enable the Jenkins service to start on system boot: 
sudo systemctl enable jenkins
#Adjust the firewall
sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
sudo firewall-cmd --reload
echo "Jenkins successfully installed"