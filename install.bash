#! /bin/bash

##################################################################
##### This script installs: Jenkins, Nginx, Java 1.8.0 JDK.	 #####
##### Configures Nginx to support proxying connections of	 #####
##### port 8080 on environments where it is disallowed.		 #####
##################################################################

set -e ## Exit upon the occurrence of any stderr.

echo "Script execution starting at: `date` "

echo "Installing wget." && echo
yum install -y wget

echo "Adding repo for Jenkins." && echo
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

echo "Import key to ensure that repo is secure." && echo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

echo "Perform update to ensure that packages are cached and updated." && echo
yum update

echo "Install Jenkins." && echo
yum install -y jenkins

echo "Install OpenJDK's JAVA 1.8 version." && echo
yum install -y java-1.8.0-openjdk

echo "Enabling jenkins service to start up at system's bootup." && echo
systemctl enable jenkins

echo "start jenkins service." && echo
systemctl start jenkins

echo "print current status of jenkins service." && echo
systemctl status jenkins

echo "Installing nginx for proxying the connection of port 8080 in an environment where port 8080 connections are disallowed." && echo
yum install -y nginx

##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!! 
##need to inject replacement of nginx.conf with location tag changes here. 
##################################################!!!!!!!!!!!!!!!!!!!!!!!!!!!!

echo "Enabling nginx service to start up at system's bootup." && echo
systemctl enable nginx

echo "start nginx service." && echo
systemctl start nginx

echo "print current status of nginx service." && echo
systemctl status nginx


## elinks is text based browser.
echo "Install elinks." && echo 
yum install -y elinks




###This section can be removed later######
echo "Checking if SELinux is enabled and Enforcing" && echo 
getenforce


echo "Changing SELinux level to Permissive." && echo 
setenforce 0

echo "Checking if SELinux is enabled and Permissive." && echo 
getenforce

echo "restarting nginx service." && echo
systemctl restart nginx


echo "restarting jenkins service." && echo
systemctl restart jenkins
##########################################




echo "Install setroubleshoot-server & selinux-policy-devel to support management of selinux." && echo 
yum install -y setroubleshoot-server selinux-policy-devel

echo "Print all ports allowed by selinux." && echo 
sepolicy network -t http_port_t

echo "Allow port 8080 connections via SELinux." && echo
semanage port -at http_port_t -p tcp 8080
semanage port -mt http_port_t -p tcp 8080

echo "Print all ports allowed by selinux." && echo 
sepolicy network -t http_port_t

echo "Changing SELinux level to Enforcing." && echo 
setenforce 1

echo "Checking if SELinux is enabled and Enforcing." && echo 
getenforce

echo "restarting nginx service." && echo
systemctl restart nginx


echo "restarting jenkins service." && echo
systemctl restart jenkins