#! /bin/bash

##################################################################
##### This script installs: Jenkins, Nginx, Java 1.8.0 JDK.	 #####
##### 														 #####
##### Configures Nginx to support proxying connections of	 #####
##### port 8080 on environments where it is disallowed.		 #####
#####													 	 #####
##################################################################

set -e ## Exit upon the occurrence of any stderr.


if [ "$(grep -Ei 'ID="centos"|CENTOS_MANTISBT_PROJECT_VERSION="7"' /etc/os-release)" ];
then
	echo "System has been identified as CentOS 7. Script will now begin the Installation." && echo
	echo "Installing wget." && echo
	yum install -y wget && echo
	
	echo "Adding repo for Jenkins." && echo
	sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo && echo

	echo "Import key to ensure that repo is secure." && echo
	sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key && echo

	echo "Perform update to ensure that packages are cached and updated." && echo
	yum update -y && echo

	echo "Install Jenkins." && echo
	yum install -y jenkins && echo

	echo "Install OpenJDK's JAVA 1.8 version." && echo
	yum install -y java-1.8.0-openjdk && echo

	echo "Enabling jenkins service to start up at system's bootup." && echo
	systemctl enable jenkins && echo

	echo "start jenkins service." && echo
	systemctl start jenkins && echo

	echo "print current status of jenkins service." && echo
	systemctl status jenkins && echo
	
	echo "Install epel-release repository as a pre-req to install nginx"
	yum install -y epel-release && echo

	echo "Installing nginx for proxying the connection of port 8080 in an environment where port 8080 connections are disallowed." && echo
	yum install -y nginx && echo

	dl_dir=`pwd`
	cp $dl_dir/nginx.conf /etc/nginx/nginx.conf

	echo "Enabling nginx service to start up at system's bootup." && echo
	systemctl enable nginx && echo

	echo "start nginx service." && echo
	systemctl start nginx && echo

	echo "print current status of nginx service." && echo
	systemctl status nginx && echo

	echo "Install setroubleshoot-server & selinux-policy-devel to support management of SELinux." && echo 
	yum install -y setroubleshoot-server selinux-policy-devel && echo

	echo "Print all ports allowed by SELinux." && echo 
	sepolicy network -t http_port_t && echo

	echo "Allow port 8080 connections via SELinux." && echo
	semanage port -at http_port_t -p tcp 8080 && echo
	semanage port -mt http_port_t -p tcp 8080 && echo

	echo "Print all ports allowed by SELinux." && echo 
	sepolicy network -t http_port_t && echo

	echo "Changing SELinux level to Enforcing." && echo 
	setenforce 1 && echo

	echo "Checking if SELinux is enabled and Enforcing." && echo 
	getenforce && echo

	echo "restarting nginx service." && echo
	systemctl restart nginx && echo


	echo "restarting jenkins service." && echo
	systemctl restart jenkins && echo

	echo "Fetching Jenkins default admin password and storing it in a temporary variable. A copy of the admin password has been stored on / and the file is called .jenkins_admin_pass_file . You can view the password by running the following command:	cat /.jenkins_admin_pass_file" && echo
	jenkins_admin_pass=`cat /var/lib/jenkins/secrets/initialAdminPassword`
	cp /var/lib/jenkins/secrets/initialAdminPassword /.jenkins_admin_pass_file
	echo "Jenkins admin password is: $jenkins_admin_pass . Please open the link http://`hostname -f` or http://`hostname -i` on your browser, use the default password to log into Jenkins and configure your Jenkins server" && echo
else
	echo "This is not a CentOS 7 System. Thus, the script won't work. Please contact Ali Muhammad at am900820@gmail.com if you would like to have a script developed for any other OS type or version."
fi
