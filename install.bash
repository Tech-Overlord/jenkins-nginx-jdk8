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
	echo -e "\nScript execution starting at: `date`"
	
	host_short=`hostname -s`
	host_long=`hostname -f`
	pri_ip=`hostname -I`
	pub_ip=`hostname -i`
	
	echo -e "\nFully Qualified Domain name of this system (if any) is: $host_long\nHostname of this system (if any) is: $host_short\nPrivate IP of this machine is: $pri_ip\nPublic IP of this machine is: $pub_ip"
	
	echo -e "\nSystem has been identified as CentOS 7. Script will now begin the Installation.\n"
	echo -e "\nInstalling wget on $host_short \n"
	yum install -y wget
	
	echo -e "\nInstalling epel-release repository as a pre-req to install nginx on $host_short \n"
	yum install -y epel-release
	
	echo -e "\nAdding repo for Jenkins on $host_short \n"
	sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo

	echo -e "\nImporting key to ensure that repo is secure on $host_short \n"
	sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key

	echo -e "\nPerforming update to ensure that packages are cached and updated on $host_short \n"
	yum update -y

	echo -e "\nInstalling Jenkins on $host_short \n"
	yum install -y jenkins

	echo -e "\nInstalling OpenJDK's JAVA 1.8 version & Git on $host_short \n"
	yum install -y java-1.8.0-openjdk git

	echo -e "\nEnabling jenkins service to start up at system's bootup on $host_short \n"
	systemctl enable jenkins

	echo -e "\nStarting jenkins service on $host_short \n"
	systemctl start jenkins

	echo -e "\nPrinting current status of jenkins service on $host_short \n"
	systemctl status jenkins

	echo -e "\nInstalling nginx on $host_short \n"
	yum install -y nginx

	dl_dir=`pwd`
	cp -R $dl_dir/nginx.conf /etc/nginx/nginx.conf

	echo -e "\nEnabling nginx service to start up at system's bootup on $host_short \n"
	systemctl enable nginx

	echo -e "\nStarting nginx service on $host_short \n"
	systemctl start nginx

	echo -e "\nPrinting current status of nginx service on $host_short \n"
	systemctl status nginx

	echo -e "\nInstalling setroubleshoot-server & selinux-policy-devel to support management of SELinux on $host_short \n"
	yum install -y setroubleshoot-server selinux-policy-devel

	echo -e "\nPrinting all ports allowed by SELinux.\n"
	sepolicy network -t http_port_t

	echo -e "\nAllowing port 8080 connections via SELinux on $host_short \n"
	##semanage port -at http_port_t -p tcp 8080## Enable this command if port 8080 is not already added/defined.
	semanage port -mt http_port_t -p tcp 8080

	echo -e "\nPrinting all ports allowed by SELinux on $host_short \n"
	sepolicy network -t http_port_t

	echo -e "\nChanging SELinux level to Enforcing on $host_short \n"
	setenforce 1

	echo -e "\nChecking if SELinux is enabled and in an Enforcing state on $host_short \n"
	getenforce

	echo -e "\nRestarting nginx service on $host_short \n"
	systemctl restart nginx


	echo -e "\nRestarting jenkins service on $host_short \n"
	systemctl restart jenkins
	
	echo -e "\nChecking service status of nginx and jenkins on $host_short \n"
	systemctl status nginx jenkins

	echo -e "\nFetching Jenkins default admin password and storing it in a temporary variable. A copy of the admin password has been stored on / and the file is called .jenkins_admin_pass_file . You can view the password by running the following command:	cat /.jenkins_admin_pass_file\n"
	jenkins_admin_pass=`cat /var/lib/jenkins/secrets/initialAdminPassword`
	cp /var/lib/jenkins/secrets/initialAdminPassword /.jenkins_admin_pass_file
	echo -e "\nJenkins admin password is: $jenkins_admin_pass . Please open the link http://$host_long or http://$pub_ip on your internet browser, use the default password to log into Jenkins and configure your Jenkins server\n"
	echo -e "\nScript execution ended at: `date` \n"
else
	echo -e "\nThis is not a CentOS 7 System. Thus, the script won't work. Please contact Ali Muhammad at am900820@gmail.com if you would like to have a script developed for any other OS type or version.\n"
fi
