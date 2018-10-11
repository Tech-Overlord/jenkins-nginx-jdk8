## Sample Output:
Below is a sample output generated on one of my CentOS7 servers. Please note that I have intentionally kept the public/private IP's & Jenkins Admin Password hidden as well as changed the FQDN and Hostname in the output for personal security purposes :grin: . It will generate the correct details for you on your system.

```shell
[root@builserver jenkins-nginx-jdk8]# ./install.bash

Script execution starting at: Thu Oct 11 05:56:05 UTC 2018

Fully Qualified Domain name of this system (if any) is: builserver.oncentos.com
Hostname of this system (if any) is: builserver
Private IP of this machine is: xxx.xx.xx.xxx
Public IP of this machine is: xxx.xxx.xxx.xxx

System has been identified as CentOS 7. Script will now begin the Installation.


Installing wget on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Package wget-1.14-15.el7_4.1.x86_64 already installed and latest version
Nothing to do

Adding repo for Jenkins on builserver

--2018-10-11 05:56:06--  http://pkg.jenkins-ci.org/redhat/jenkins.repo
Resolving pkg.jenkins-ci.org (pkg.jenkins-ci.org)... 52.202.51.185
Connecting to pkg.jenkins-ci.org (pkg.jenkins-ci.org)|52.202.51.185|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 71
Saving to: ‘/etc/yum.repos.d/jenkins.repo’

100%[===========================================================================================================================================================>] 71          --.-K/s   in 0s

2018-10-11 05:56:06 (10.7 MB/s) - ‘/etc/yum.repos.d/jenkins.repo’ saved [71/71]


Importing key to ensure that repo is secure on builserver


Performing update to ensure that packages are cached and updated on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
jenkins                                                                                                                                                                       | 2.9 kB  00:00:00
jenkins/primary_db                                                                                                                                                            | 115 kB  00:00:01
No packages marked for update

Installing Jenkins on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Resolving Dependencies
--> Running transaction check
---> Package jenkins.noarch 0:2.146-1.1 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                        Arch                                          Version                                           Repository                                      Size
=====================================================================================================================================================================================================
Installing:
 jenkins                                        noarch                                        2.146-1.1                                         jenkins                                         72 M

Transaction Summary
=====================================================================================================================================================================================================
Install  1 Package

Total download size: 72 M
Installed size: 72 M
Downloading packages:
jenkins-2.146-1.1.noarch.rpm                                                                                                                                                  |  72 MB  00:00:47
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : jenkins-2.146-1.1.noarch                                                                                                                                                          1/1
  Verifying  : jenkins-2.146-1.1.noarch                                                                                                                                                          1/1

Installed:
  jenkins.noarch 0:2.146-1.1

Complete!

Installing OpenJDK's JAVA 1.8 version on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Resolving Dependencies
--> Running transaction check
---> Package java-1.8.0-openjdk.x86_64 1:1.8.0.181-3.b13.el7_5 will be installed
--> Processing Dependency: java-1.8.0-openjdk-headless(x86-64) = 1:1.8.0.181-3.b13.el7_5 for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: xorg-x11-fonts-Type1 for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: libjvm.so(SUNWprivate_1.1)(64bit) for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: libjava.so(SUNWprivate_1.1)(64bit) for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: libjvm.so()(64bit) for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: libjava.so()(64bit) for package: 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64
--> Running transaction check
---> Package java-1.8.0-openjdk-headless.x86_64 1:1.8.0.181-3.b13.el7_5 will be installed
--> Processing Dependency: tzdata-java >= 2015d for package: 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: copy-jdk-configs >= 2.2 for package: 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: lksctp-tools(x86-64) for package: 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64
--> Processing Dependency: jpackage-utils for package: 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64
---> Package xorg-x11-fonts-Type1.noarch 0:7.5-9.el7 will be installed
--> Processing Dependency: ttmkfdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
--> Processing Dependency: ttmkfdir for package: xorg-x11-fonts-Type1-7.5-9.el7.noarch
--> Running transaction check
---> Package copy-jdk-configs.noarch 0:3.3-10.el7_5 will be installed
---> Package javapackages-tools.noarch 0:3.4.1-11.el7 will be installed
--> Processing Dependency: python-javapackages = 3.4.1-11.el7 for package: javapackages-tools-3.4.1-11.el7.noarch
---> Package lksctp-tools.x86_64 0:1.0.17-2.el7 will be installed
---> Package ttmkfdir.x86_64 0:3.0.9-42.el7 will be installed
---> Package tzdata-java.noarch 0:2018e-3.el7 will be installed
--> Running transaction check
---> Package python-javapackages.noarch 0:3.4.1-11.el7 will be installed
--> Processing Dependency: python-lxml for package: python-javapackages-3.4.1-11.el7.noarch
--> Running transaction check
---> Package python-lxml.x86_64 0:3.2.1-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                                   Arch                                 Version                                                  Repository                             Size
=====================================================================================================================================================================================================
Installing:
 java-1.8.0-openjdk                                        x86_64                               1:1.8.0.181-3.b13.el7_5                                  updates                               250 k
Installing for dependencies:
 copy-jdk-configs                                          noarch                               3.3-10.el7_5                                             updates                                21 k
 java-1.8.0-openjdk-headless                               x86_64                               1:1.8.0.181-3.b13.el7_5                                  updates                                32 M
 javapackages-tools                                        noarch                               3.4.1-11.el7                                             base                                   73 k
 lksctp-tools                                              x86_64                               1.0.17-2.el7                                             base                                   88 k
 python-javapackages                                       noarch                               3.4.1-11.el7                                             base                                   31 k
 python-lxml                                               x86_64                               3.2.1-4.el7                                              base                                  758 k
 ttmkfdir                                                  x86_64                               3.0.9-42.el7                                             base                                   48 k
 tzdata-java                                               noarch                               2018e-3.el7                                              updates                               185 k
 xorg-x11-fonts-Type1                                      noarch                               7.5-9.el7                                                base                                  521 k

Transaction Summary
=====================================================================================================================================================================================================
Install  1 Package (+9 Dependent packages)

Total download size: 34 M
Installed size: 108 M
Downloading packages:
(1/10): copy-jdk-configs-3.3-10.el7_5.noarch.rpm                                                                                                                              |  21 kB  00:00:00
(2/10): java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64.rpm                                                                                                                   | 250 kB  00:00:00
(3/10): javapackages-tools-3.4.1-11.el7.noarch.rpm                                                                                                                            |  73 kB  00:00:00
(4/10): lksctp-tools-1.0.17-2.el7.x86_64.rpm                                                                                                                                  |  88 kB  00:00:00
(5/10): ttmkfdir-3.0.9-42.el7.x86_64.rpm                                                                                                                                      |  48 kB  00:00:00
(6/10): python-javapackages-3.4.1-11.el7.noarch.rpm                                                                                                                           |  31 kB  00:00:00
(7/10): xorg-x11-fonts-Type1-7.5-9.el7.noarch.rpm                                                                                                                             | 521 kB  00:00:00
(8/10): python-lxml-3.2.1-4.el7.x86_64.rpm                                                                                                                                    | 758 kB  00:00:00
(9/10): tzdata-java-2018e-3.el7.noarch.rpm                                                                                                                                    | 185 kB  00:00:00
(10/10): java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64.rpm                                                                                                         |  32 MB  00:00:04
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                6.7 MB/s |  34 MB  00:00:05
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : ttmkfdir-3.0.9-42.el7.x86_64                                                                                                                                                     1/10
  Installing : xorg-x11-fonts-Type1-7.5-9.el7.noarch                                                                                                                                            2/10
  Installing : lksctp-tools-1.0.17-2.el7.x86_64                                                                                                                                                 3/10
  Installing : tzdata-java-2018e-3.el7.noarch                                                                                                                                                   4/10
  Installing : python-lxml-3.2.1-4.el7.x86_64                                                                                                                                                   5/10
  Installing : python-javapackages-3.4.1-11.el7.noarch                                                                                                                                          6/10
  Installing : javapackages-tools-3.4.1-11.el7.noarch                                                                                                                                           7/10
  Installing : copy-jdk-configs-3.3-10.el7_5.noarch                                                                                                                                             8/10
  Installing : 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64                                                                                                                       9/10
  Installing : 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64                                                                                                                               10/10
  Verifying  : 1:java-1.8.0-openjdk-1.8.0.181-3.b13.el7_5.x86_64                                                                                                                                1/10
  Verifying  : 1:java-1.8.0-openjdk-headless-1.8.0.181-3.b13.el7_5.x86_64                                                                                                                       2/10
  Verifying  : xorg-x11-fonts-Type1-7.5-9.el7.noarch                                                                                                                                            3/10
  Verifying  : copy-jdk-configs-3.3-10.el7_5.noarch                                                                                                                                             4/10
  Verifying  : python-javapackages-3.4.1-11.el7.noarch                                                                                                                                          5/10
  Verifying  : python-lxml-3.2.1-4.el7.x86_64                                                                                                                                                   6/10
  Verifying  : tzdata-java-2018e-3.el7.noarch                                                                                                                                                   7/10
  Verifying  : javapackages-tools-3.4.1-11.el7.noarch                                                                                                                                           8/10
  Verifying  : lksctp-tools-1.0.17-2.el7.x86_64                                                                                                                                                 9/10
  Verifying  : ttmkfdir-3.0.9-42.el7.x86_64                                                                                                                                                    10/10

Installed:
  java-1.8.0-openjdk.x86_64 1:1.8.0.181-3.b13.el7_5

Dependency Installed:
  copy-jdk-configs.noarch 0:3.3-10.el7_5        java-1.8.0-openjdk-headless.x86_64 1:1.8.0.181-3.b13.el7_5     javapackages-tools.noarch 0:3.4.1-11.el7     lksctp-tools.x86_64 0:1.0.17-2.el7
  python-javapackages.noarch 0:3.4.1-11.el7     python-lxml.x86_64 0:3.2.1-4.el7                               ttmkfdir.x86_64 0:3.0.9-42.el7               tzdata-java.noarch 0:2018e-3.el7
  xorg-x11-fonts-Type1.noarch 0:7.5-9.el7

Complete!

Enabling jenkins service to start up at system's bootup on builserver

jenkins.service is not a native service, redirecting to /sbin/chkconfig.
Executing /sbin/chkconfig jenkins on

Starting jenkins service on builserver


Printing current status of jenkins service on builserver

● jenkins.service - LSB: Jenkins Automation Server
   Loaded: loaded (/etc/rc.d/init.d/jenkins; bad; vendor preset: disabled)
   Active: active (running) since Thu 2018-10-11 05:57:25 UTC; 30ms ago
     Docs: man:systemd-sysv-generator(8)
  Process: 26787 ExecStart=/etc/rc.d/init.d/jenkins start (code=exited, status=0/SUCCESS)
   CGroup: /system.slice/jenkins.service
           └─26806 /etc/alternatives/java -Dcom.sun.akuma.Daemon=daemonized -Djava.awt.headless=true -DJENKINS_HOME=/var/lib/jenkins -jar /usr/lib/jenkins/jenkins.war --logfile=/var/log/jenkins/...

Oct 11 05:57:24 builserver.oncentos.com systemd[1]: Starting LSB: Jenkins Automation Server...
Oct 11 05:57:24 builserver.oncentos.com runuser[26792]: pam_unix(runuser:session): session opened for user jenkins by (uid=0)
Oct 11 05:57:25 builserver.oncentos.com jenkins[26787]: Starting Jenkins [  OK  ]
Oct 11 05:57:25 builserver.oncentos.com systemd[1]: Started LSB: Jenkins Automation Server.

Installing epel-release repository as a pre-req to install nginx on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Package epel-release-7-11.noarch already installed and latest version
Nothing to do

Installing nginx on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Resolving Dependencies
--> Running transaction check
---> Package nginx.x86_64 1:1.12.2-2.el7 will be installed
--> Processing Dependency: nginx-filesystem = 1:1.12.2-2.el7 for package: 1:nginx-1.12.2-2.el7.x86_64
--> Processing Dependency: nginx-all-modules = 1:1.12.2-2.el7 for package: 1:nginx-1.12.2-2.el7.x86_64
--> Processing Dependency: nginx-filesystem for package: 1:nginx-1.12.2-2.el7.x86_64
--> Processing Dependency: libprofiler.so.0()(64bit) for package: 1:nginx-1.12.2-2.el7.x86_64
--> Running transaction check
---> Package gperftools-libs.x86_64 0:2.6.1-1.el7 will be installed
---> Package nginx-all-modules.noarch 1:1.12.2-2.el7 will be installed
--> Processing Dependency: nginx-mod-stream = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
--> Processing Dependency: nginx-mod-mail = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
--> Processing Dependency: nginx-mod-http-xslt-filter = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
--> Processing Dependency: nginx-mod-http-perl = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
--> Processing Dependency: nginx-mod-http-image-filter = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
--> Processing Dependency: nginx-mod-http-geoip = 1:1.12.2-2.el7 for package: 1:nginx-all-modules-1.12.2-2.el7.noarch
---> Package nginx-filesystem.noarch 1:1.12.2-2.el7 will be installed
--> Running transaction check
---> Package nginx-mod-http-geoip.x86_64 1:1.12.2-2.el7 will be installed
---> Package nginx-mod-http-image-filter.x86_64 1:1.12.2-2.el7 will be installed
--> Processing Dependency: gd for package: 1:nginx-mod-http-image-filter-1.12.2-2.el7.x86_64
--> Processing Dependency: libgd.so.2()(64bit) for package: 1:nginx-mod-http-image-filter-1.12.2-2.el7.x86_64
---> Package nginx-mod-http-perl.x86_64 1:1.12.2-2.el7 will be installed
---> Package nginx-mod-http-xslt-filter.x86_64 1:1.12.2-2.el7 will be installed
---> Package nginx-mod-mail.x86_64 1:1.12.2-2.el7 will be installed
---> Package nginx-mod-stream.x86_64 1:1.12.2-2.el7 will be installed
--> Running transaction check
---> Package gd.x86_64 0:2.0.35-26.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                                      Arch                                    Version                                            Repository                             Size
=====================================================================================================================================================================================================
Installing:
 nginx                                                        x86_64                                  1:1.12.2-2.el7                                     epel                                  530 k
Installing for dependencies:
 gd                                                           x86_64                                  2.0.35-26.el7                                      base                                  146 k
 gperftools-libs                                              x86_64                                  2.6.1-1.el7                                        base                                  272 k
 nginx-all-modules                                            noarch                                  1:1.12.2-2.el7                                     epel                                   16 k
 nginx-filesystem                                             noarch                                  1:1.12.2-2.el7                                     epel                                   17 k
 nginx-mod-http-geoip                                         x86_64                                  1:1.12.2-2.el7                                     epel                                   23 k
 nginx-mod-http-image-filter                                  x86_64                                  1:1.12.2-2.el7                                     epel                                   26 k
 nginx-mod-http-perl                                          x86_64                                  1:1.12.2-2.el7                                     epel                                   36 k
 nginx-mod-http-xslt-filter                                   x86_64                                  1:1.12.2-2.el7                                     epel                                   26 k
 nginx-mod-mail                                               x86_64                                  1:1.12.2-2.el7                                     epel                                   54 k
 nginx-mod-stream                                             x86_64                                  1:1.12.2-2.el7                                     epel                                   76 k

Transaction Summary
=====================================================================================================================================================================================================
Install  1 Package (+10 Dependent packages)

Total download size: 1.2 M
Installed size: 3.8 M
Downloading packages:
(1/11): gd-2.0.35-26.el7.x86_64.rpm                                                                                                                                           | 146 kB  00:00:00
(2/11): gperftools-libs-2.6.1-1.el7.x86_64.rpm                                                                                                                                | 272 kB  00:00:00
(3/11): nginx-1.12.2-2.el7.x86_64.rpm                                                                                                                                         | 530 kB  00:00:00
(4/11): nginx-all-modules-1.12.2-2.el7.noarch.rpm                                                                                                                             |  16 kB  00:00:00
(5/11): nginx-filesystem-1.12.2-2.el7.noarch.rpm                                                                                                                              |  17 kB  00:00:00
(6/11): nginx-mod-http-geoip-1.12.2-2.el7.x86_64.rpm                                                                                                                          |  23 kB  00:00:00
(7/11): nginx-mod-http-image-filter-1.12.2-2.el7.x86_64.rpm                                                                                                                   |  26 kB  00:00:00
(8/11): nginx-mod-http-perl-1.12.2-2.el7.x86_64.rpm                                                                                                                           |  36 kB  00:00:00
(9/11): nginx-mod-http-xslt-filter-1.12.2-2.el7.x86_64.rpm                                                                                                                    |  26 kB  00:00:00
(10/11): nginx-mod-mail-1.12.2-2.el7.x86_64.rpm                                                                                                                               |  54 kB  00:00:00
(11/11): nginx-mod-stream-1.12.2-2.el7.x86_64.rpm                                                                                                                             |  76 kB  00:00:00
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                2.1 MB/s | 1.2 MB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : gperftools-libs-2.6.1-1.el7.x86_64                                                                                                                                               1/11
  Installing : gd-2.0.35-26.el7.x86_64                                                                                                                                                          2/11
  Installing : 1:nginx-filesystem-1.12.2-2.el7.noarch                                                                                                                                           3/11
  Installing : 1:nginx-mod-mail-1.12.2-2.el7.x86_64                                                                                                                                             4/11
  Installing : 1:nginx-mod-http-geoip-1.12.2-2.el7.x86_64                                                                                                                                       5/11
  Installing : 1:nginx-mod-http-xslt-filter-1.12.2-2.el7.x86_64                                                                                                                                 6/11
  Installing : 1:nginx-mod-http-image-filter-1.12.2-2.el7.x86_64                                                                                                                                7/11
  Installing : 1:nginx-mod-http-perl-1.12.2-2.el7.x86_64                                                                                                                                        8/11
  Installing : 1:nginx-all-modules-1.12.2-2.el7.noarch                                                                                                                                          9/11
  Installing : 1:nginx-1.12.2-2.el7.x86_64                                                                                                                                                     10/11
  Installing : 1:nginx-mod-stream-1.12.2-2.el7.x86_64                                                                                                                                          11/11
  Verifying  : 1:nginx-filesystem-1.12.2-2.el7.noarch                                                                                                                                           1/11
  Verifying  : gd-2.0.35-26.el7.x86_64                                                                                                                                                          2/11
  Verifying  : gperftools-libs-2.6.1-1.el7.x86_64                                                                                                                                               3/11
  Verifying  : 1:nginx-1.12.2-2.el7.x86_64                                                                                                                                                      4/11
  Verifying  : 1:nginx-mod-mail-1.12.2-2.el7.x86_64                                                                                                                                             5/11
  Verifying  : 1:nginx-all-modules-1.12.2-2.el7.noarch                                                                                                                                          6/11
  Verifying  : 1:nginx-mod-http-geoip-1.12.2-2.el7.x86_64                                                                                                                                       7/11
  Verifying  : 1:nginx-mod-http-xslt-filter-1.12.2-2.el7.x86_64                                                                                                                                 8/11
  Verifying  : 1:nginx-mod-http-image-filter-1.12.2-2.el7.x86_64                                                                                                                                9/11
  Verifying  : 1:nginx-mod-http-perl-1.12.2-2.el7.x86_64                                                                                                                                       10/11
  Verifying  : 1:nginx-mod-stream-1.12.2-2.el7.x86_64                                                                                                                                          11/11

Installed:
  nginx.x86_64 1:1.12.2-2.el7

Dependency Installed:
  gd.x86_64 0:2.0.35-26.el7                     gperftools-libs.x86_64 0:2.6.1-1.el7                 nginx-all-modules.noarch 1:1.12.2-2.el7      nginx-filesystem.noarch 1:1.12.2-2.el7
  nginx-mod-http-geoip.x86_64 1:1.12.2-2.el7    nginx-mod-http-image-filter.x86_64 1:1.12.2-2.el7    nginx-mod-http-perl.x86_64 1:1.12.2-2.el7    nginx-mod-http-xslt-filter.x86_64 1:1.12.2-2.el7
  nginx-mod-mail.x86_64 1:1.12.2-2.el7          nginx-mod-stream.x86_64 1:1.12.2-2.el7

Complete!

Enabling nginx service to start up at system's bootup on builserver

Created symlink from /etc/systemd/system/multi-user.target.wants/nginx.service to /usr/lib/systemd/system/nginx.service.

Starting nginx service on builserver


Printing current status of nginx service on builserver

● nginx.service - The nginx HTTP and reverse proxy server
   Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; vendor preset: disabled)
   Active: active (running) since Thu 2018-10-11 05:57:38 UTC; 39ms ago
  Process: 26929 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
  Process: 26925 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
  Process: 26924 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
 Main PID: 26931 (nginx)
   CGroup: /system.slice/nginx.service
           ├─26931 nginx: master process /usr/sbin/nginx
           └─26932 nginx: worker process

Oct 11 05:57:37 builserver.oncentos.com systemd[1]: Starting The nginx HTTP and reverse proxy server...
Oct 11 05:57:38 builserver.oncentos.com nginx[26925]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
Oct 11 05:57:38 builserver.oncentos.com nginx[26925]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Oct 11 05:57:38 builserver.oncentos.com systemd[1]: Failed to read PID from file /run/nginx.pid: Invalid argument
Oct 11 05:57:38 builserver.oncentos.com systemd[1]: Started The nginx HTTP and reverse proxy server.

Installing setroubleshoot-server & selinux-policy-devel to support management of SELinux on builserver

Loaded plugins: fastestmirror
Loading mirror speeds from cached hostfile
 * base: centos.usonyx.net
 * epel: sg.fedora.ipserverone.com
 * extras: centos.usonyx.net
 * nux-dextop: mirror.li.nux.ro
 * updates: centos.usonyx.net
Resolving Dependencies
--> Running transaction check
---> Package selinux-policy-devel.noarch 0:3.13.1-192.el7_5.6 will be installed
--> Processing Dependency: policycoreutils-devel >= 2.5-18 for package: selinux-policy-devel-3.13.1-192.el7_5.6.noarch
---> Package setroubleshoot-server.x86_64 0:3.2.29-3.el7 will be installed
--> Processing Dependency: systemd-python >= 206-1 for package: setroubleshoot-server-3.2.29-3.el7.x86_64
--> Processing Dependency: setroubleshoot-plugins >= 3.0.62 for package: setroubleshoot-server-3.2.29-3.el7.x86_64
--> Processing Dependency: python-slip-dbus for package: setroubleshoot-server-3.2.29-3.el7.x86_64
--> Processing Dependency: pygobject2 for package: setroubleshoot-server-3.2.29-3.el7.x86_64
--> Running transaction check
---> Package policycoreutils-devel.x86_64 0:2.5-22.el7 will be installed
---> Package pygobject2.x86_64 0:2.28.6-11.el7 will be installed
---> Package python-slip-dbus.noarch 0:0.4.0-4.el7 will be installed
--> Processing Dependency: python-slip = 0.4.0-4.el7 for package: python-slip-dbus-0.4.0-4.el7.noarch
---> Package setroubleshoot-plugins.noarch 0:3.0.66-2.1.el7 will be installed
---> Package systemd-python.x86_64 0:219-57.el7_5.3 will be installed
--> Running transaction check
---> Package python-slip.noarch 0:0.4.0-4.el7 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=====================================================================================================================================================================================================
 Package                                                 Arch                                    Version                                              Repository                                Size
=====================================================================================================================================================================================================
Installing:
 selinux-policy-devel                                    noarch                                  3.13.1-192.el7_5.6                                   updates                                  1.7 M
 setroubleshoot-server                                   x86_64                                  3.2.29-3.el7                                         base                                     388 k
Installing for dependencies:
 policycoreutils-devel                                   x86_64                                  2.5-22.el7                                           base                                     333 k
 pygobject2                                              x86_64                                  2.28.6-11.el7                                        base                                     226 k
 python-slip                                             noarch                                  0.4.0-4.el7                                          base                                      31 k
 python-slip-dbus                                        noarch                                  0.4.0-4.el7                                          base                                      32 k
 setroubleshoot-plugins                                  noarch                                  3.0.66-2.1.el7                                       base                                     345 k
 systemd-python                                          x86_64                                  219-57.el7_5.3                                       updates                                  128 k

Transaction Summary
=====================================================================================================================================================================================================
Install  2 Packages (+6 Dependent packages)

Total download size: 3.1 M
Installed size: 28 M
Downloading packages:
(1/8): python-slip-0.4.0-4.el7.noarch.rpm                                                                                                                                     |  31 kB  00:00:00
(2/8): pygobject2-2.28.6-11.el7.x86_64.rpm                                                                                                                                    | 226 kB  00:00:00
(3/8): policycoreutils-devel-2.5-22.el7.x86_64.rpm                                                                                                                            | 333 kB  00:00:00
(4/8): python-slip-dbus-0.4.0-4.el7.noarch.rpm                                                                                                                                |  32 kB  00:00:00
(5/8): setroubleshoot-plugins-3.0.66-2.1.el7.noarch.rpm                                                                                                                       | 345 kB  00:00:00
(6/8): setroubleshoot-server-3.2.29-3.el7.x86_64.rpm                                                                                                                          | 388 kB  00:00:00
(7/8): systemd-python-219-57.el7_5.3.x86_64.rpm                                                                                                                               | 128 kB  00:00:00
(8/8): selinux-policy-devel-3.13.1-192.el7_5.6.noarch.rpm                                                                                                                     | 1.7 MB  00:00:00
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Total                                                                                                                                                                7.4 MB/s | 3.1 MB  00:00:00
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Installing : policycoreutils-devel-2.5-22.el7.x86_64                                                                                                                                           1/8
  Installing : selinux-policy-devel-3.13.1-192.el7_5.6.noarch                                                                                                                                    2/8
  Installing : pygobject2-2.28.6-11.el7.x86_64                                                                                                                                                   3/8
  Installing : python-slip-0.4.0-4.el7.noarch                                                                                                                                                    4/8
  Installing : python-slip-dbus-0.4.0-4.el7.noarch                                                                                                                                               5/8
  Installing : systemd-python-219-57.el7_5.3.x86_64                                                                                                                                              6/8
  Installing : setroubleshoot-plugins-3.0.66-2.1.el7.noarch                                                                                                                                      7/8
  Installing : setroubleshoot-server-3.2.29-3.el7.x86_64                                                                                                                                         8/8
  Verifying  : python-slip-dbus-0.4.0-4.el7.noarch                                                                                                                                               1/8
  Verifying  : selinux-policy-devel-3.13.1-192.el7_5.6.noarch                                                                                                                                    2/8
  Verifying  : systemd-python-219-57.el7_5.3.x86_64                                                                                                                                              3/8
  Verifying  : setroubleshoot-server-3.2.29-3.el7.x86_64                                                                                                                                         4/8
  Verifying  : python-slip-0.4.0-4.el7.noarch                                                                                                                                                    5/8
  Verifying  : setroubleshoot-plugins-3.0.66-2.1.el7.noarch                                                                                                                                      6/8
  Verifying  : pygobject2-2.28.6-11.el7.x86_64                                                                                                                                                   7/8
  Verifying  : policycoreutils-devel-2.5-22.el7.x86_64                                                                                                                                           8/8

Installed:
  selinux-policy-devel.noarch 0:3.13.1-192.el7_5.6                                                    setroubleshoot-server.x86_64 0:3.2.29-3.el7

Dependency Installed:
  policycoreutils-devel.x86_64 0:2.5-22.el7 pygobject2.x86_64 0:2.28.6-11.el7 python-slip.noarch 0:0.4.0-4.el7 python-slip-dbus.noarch 0:0.4.0-4.el7 setroubleshoot-plugins.noarch 0:3.0.66-2.1.el7
  systemd-python.x86_64 0:219-57.el7_5.3

Complete!

Printing all ports allowed by SELinux.

http_port_t: tcp: 80,81,443,488,8008,8009,8443,9000

Allowing port 8080 connections via SELinux on builserver


Printing all ports allowed by SELinux on builserver

http_port_t: tcp: 8080,80,81,443,488,8008,8009,8443,9000

Changing SELinux level to Enforcing on builserver


Checking if SELinux is enabled and in an Enforcing state on builserver

Enforcing

Restarting nginx service on builserver


Restarting jenkins service on builserver


Checking service status of nginx and jenkins on builserver

● nginx.service - The nginx HTTP and reverse proxy server
   Loaded: loaded (/usr/lib/systemd/system/nginx.service; enabled; vendor preset: disabled)
   Active: active (running) since Thu 2018-10-11 05:58:14 UTC; 2s ago
  Process: 27037 ExecStart=/usr/sbin/nginx (code=exited, status=0/SUCCESS)
  Process: 27035 ExecStartPre=/usr/sbin/nginx -t (code=exited, status=0/SUCCESS)
  Process: 27034 ExecStartPre=/usr/bin/rm -f /run/nginx.pid (code=exited, status=0/SUCCESS)
 Main PID: 27039 (nginx)
   CGroup: /system.slice/nginx.service
           ├─27039 nginx: master process /usr/sbin/nginx
           └─27040 nginx: worker process

Oct 11 05:58:14 builserver.oncentos.com systemd[1]: Starting The nginx HTTP and reverse proxy server...
Oct 11 05:58:14 builserver.oncentos.com nginx[27035]: nginx: the configuration file /etc/nginx/nginx.conf syntax is ok
Oct 11 05:58:14 builserver.oncentos.com nginx[27035]: nginx: configuration file /etc/nginx/nginx.conf test is successful
Oct 11 05:58:14 builserver.oncentos.com systemd[1]: Failed to read PID from file /run/nginx.pid: Invalid argument
Oct 11 05:58:14 builserver.oncentos.com systemd[1]: Started The nginx HTTP and reverse proxy server.

● jenkins.service - LSB: Jenkins Automation Server
   Loaded: loaded (/etc/rc.d/init.d/jenkins; bad; vendor preset: disabled)
   Active: active (running) since Thu 2018-10-11 05:58:16 UTC; 11ms ago
     Docs: man:systemd-sysv-generator(8)
  Process: 27047 ExecStop=/etc/rc.d/init.d/jenkins stop (code=exited, status=0/SUCCESS)
  Process: 27065 ExecStart=/etc/rc.d/init.d/jenkins start (code=exited, status=0/SUCCESS)
   CGroup: /system.slice/jenkins.service
           └─27084 /etc/alternatives/java -Dcom.sun.akuma.Daemon=daemonized -Djava.awt.headless=true -DJENKINS_HOME=/var/lib/jenkins -jar /usr/lib/jenkins/jenkins.war --logfile=/var/log/jenkins/...

Oct 11 05:58:15 builserver.oncentos.com systemd[1]: Starting LSB: Jenkins Automation Server...
Oct 11 05:58:15 builserver.oncentos.com runuser[27070]: pam_unix(runuser:session): session opened for user jenkins by (uid=0)
Oct 11 05:58:16 builserver.oncentos.com jenkins[27065]: Starting Jenkins [  OK  ]
Oct 11 05:58:16 builserver.oncentos.com systemd[1]: Started LSB: Jenkins Automation Server.

Fetching Jenkins default admin password and storing it in a temporary variable. A copy of the admin password has been stored on / and the file is called .jenkins_admin_pass_file . You can view the password by running the following command:      cat /.jenkins_admin_pass_file


Jenkins admin password is: xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx . Please open the link http://builserver.oncentos.com or http://52.221.250.126 on your internet browser, use the default password to log into Jenkins and configure your Jenkins server


Script execution ended at: Thu Oct 11 05:58:16 UTC 2018
[root@builserver jenkins-nginx-jdk8]#
```