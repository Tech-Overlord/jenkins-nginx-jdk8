[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/0)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/0)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/1)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/1)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/2)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/2)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/3)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/3)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/4)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/4)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/5)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/5)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/6)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/6)[![](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/images/7)](https://sourcerer.io/fame/Tech-Overlord/Tech-Overlord/jenkins-nginx-jdk8/links/7)


[![license](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://github.com/Tech-Overlord/jenkins-nginx-jdk8/blob/master/LICENSE)  


# jenkins-nginx-jdk8
Shell script & package for installation of Jenkins, OpenJDK-Java1.8 and  Nginx for reverse proxying in a secure environment or system. Also, contains additional steps to perform post the script's execution.

### Audience:
IT professionals, enthusiasts or learners with a focus or interest towards CI/CD/DevOps.

### Key Features:
1. Packages Update
2. Installation of epel-release repository.
3. Installation packages which include (but not limited to) **wget**, **Jenkins**, **OpenJDK-1.8 Java**, **Git**, **Nginx** & **SELinux management tools**.
4. Modifying/managing http port **8080** using `semanage` (SELinux management tool).
5. **Reverse proxying** between port **8080** and port **80** using `Nginx` to facilitate accessing from external sources such as Internet browsers on port 80 and re-routing it internally to 8080. User's can access Jenkins simply using the FQDN or IPv4 address within the same network.


## 1. Getting Started
This section covers the steps for the execution of this script or any related information.

### 1.1. Assumptions:
1. This script requires to be executed using the `root` user.
2. Operating System is CentOS7.
3. CentOS has internet connectivity, can fetch packages from repositories and add repositories.

### 1.2. Tested on:
  * CentOS7 (Cloud VMs).
  * CentOS7 (Vagrant VMs).
  * CentOS7 (Physical system). 
  
### 1.3. Pre-requisites:
There are no special pre-requisites. The only required factors have all been mentioned under [Assumptions](https://github.com/Tech-Overlord/jenkins-nginx-jdk8#11-assumptions).

### 1.4. Download or Clone `jenkins-nginx-jdk8`:
Use `root` user for the following:
#### 1.4.1. Download `jenkins-nginx-jdk8` and provide execute permissions:
1 - Download using either the `wget` or `curl` method.

Download using **curl** with command: 
```shell
  curl -O https://github.com/Tech-Overlord/jenkins-nginx-jdk8/releases/download/v1.0.0/jenkins-nginx-jdk8.tar.gz
```
  **OR**

Download using **wget** with command:
```shell
   wget https://github.com/Tech-Overlord/jenkins-nginx-jdk8/releases/download/v1.0.0/jenkins-nginx-jdk8.tar.gz
```
2 -  Extract it using the commands: 
```shell
   tar -zxf jenkins-nginx-jdk8.tar.gz
``` 
   and then cd into extracted directory, for e.g. if the extracted directory is **jenkins-nginx-jdk8**, then do: 
```shell
   cd jenkins-nginx-jdk8/
```  
3 - Execute the following commands to ensure that the scripts have **execute** permissions:
```shell
   chmod +x install.bash
```
  
#### 1.4.2. Clone `jenkins-nginx-jdk8`:
1 - Clone using: 
```shell
  git clone https://github.com/Tech-Overlord/jenkins-nginx-jdk8
```
  
2 - Simply change into the root directory of the cloned project, for e.g. if cloned within the root of `/opt/` , then: 
```shell
  cd /opt/jenkins-nginx-jdk8/
```
  
3 - Execute the following commands to ensure that the scripts have **execute** permissions:
```shell
   chmod +x install.bash
```

## 2. Installation - Script Execution
Script execution is pretty simple once you have cloned/downloaded/extracted and supplied the appropriate executable permissions to the file. Remember that `install.bash` needs to be executed using root user.
  * Execute using: 
```shell
  ./install.bash
```

Sample output of the execution will have an output more or less identical to: [install_output](https://github.com/Tech-Overlord/jenkins-nginx-jdk8/blob/master/install_output.md) 


## 3. Post Installation steps:
There are a few post installation steps that require to be performed interactively by the user. I have tried to simplify them below. So, just follow the order and enjoy!

### 3.1 Set BASH for `jenkins` user
Installation of **Jenkins** also creates a system user called `jenkins`. By default, the user is completely non-interactive and does not have any shell/bash to utilize. Enter the command: 
```shell
cat /etc/passwd | grep jenkins
``` 
and you will see that the command generating a similar output as below:

```shell
jenkins:x:993:987:Jenkins Automation Server:/var/lib/jenkins:/bin/false
```

The `jenkins:/bin/false` at the end suggests that the user does not have a shell to work with. It would be suitable to switch it **FROM** `jenkins:/bin/false` **TO** `jenkins:/bin/bash` to ensure that a shell is available for `jenkins` user. You can do so by editing the line around `jenkins` user from within `/etc/passwd` file using either vi, vim, nano or any other editors of your choice.

Once you have edited `/etc/passwd`, the output from 
```shell
cat /etc/passwd | grep jenkins
``` 
should look like the following:

```shell
jenkins:x:993:987:Jenkins Automation Server:/var/lib/jenkins:/bin/bash
```

### 3.2 Create/change **password** for `jenkins` user

In `root` user's shell, enter the following command: 
```shell
passwd jenkins
``` 
This will ask you to set a password for jenkins password similar to the below output:
```shell
[root@buildserver ~]# passwd jenkins
Changing password for user jenkins.
New password:
Retype new password:
```

### 3.3. Generate and Copy SSH keys for `jenkins` user

From `root` user's shell, enter the command: 
```shell
su - jenkins
``` 
You will be switched into `jenkins` user's shell.
#### 3.4. Generate SSH Keys
Now generate **RSA** encryption keys (public & private key pair) using  command:
```shell
ssh-keygen -t rsa
```
(You can just press ENTER to leave all the prompt's as default). Sample output is as the following:
```shell
Generating public/private rsa key pair.
Enter file in which to save the key (/var/lib/jenkins/.ssh/id_rsa):
Created directory '/var/lib/jenkins/.ssh'.
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /var/lib/jenkins/.ssh/id_rsa.
Your public key has been saved in /var/lib/jenkins/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx jenkins@buildserver.oncentos.com
The key's randomart image is:
+---[RSA 2048]----+
|    ..           |
|   . .. .   o    |
|    o o. o *   o |
|  ++++++o o = + E|
|    o =.S+ * o + |
|     = +o B = + .|
|    . o..+ O * . |
|    0000000000   |
|    ............ |
+----[SHA256]-----+
```

**Note**: `/var/lib/jenkins` is the home directory for `jenkins` user. Do not pay attention to the key fingerprint or the key random art in the output above as I modified that.

#### 3.5. Copy SSH keys
Using the `jenkins` user shell, Execute the following command:
```shell
ssh-copy-id jenkins@localhost
``` 
It will interactively prompt you for the `jenkins` user's password just this once to confirm the authenticity, so you will need to supply `jenkins` user's password.

Above command will add the `jenkins` user's public SSH key to localhost. Basically it's the same as adding the **Public key** of user `jenkins` user in the `authorized_keys` file of the user `jenkins` on the system itself.

Output sample below:

```shell
/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/var/lib/jenkins/.ssh/id_rsa.pub"
The authenticity of host 'localhost (::1)' can't be established.
ECDSA key fingerprint is SHA256:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
ECDSA key fingerprint is MD5:99:99:99:99:99:99:99:99:99:99:99:99:99:99:99:99.
Are you sure you want to continue connecting (yes/no)? y
Please type 'yes' or 'no': yes
/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
jenkins@localhost's password:

Number of key(s) added: 1

Now try logging into the machine, with:   "ssh 'jenkins@localhost'"
and check to make sure that only the key(s) you wanted were added.
```

#### 3.6. Set `jenkins` user as a **NO PASSWORD** & `sudo` user
Using root user, do:
 ```shell
 visudo
 ```
 so that we can modify it and add `jenkins` user as a sudoer along with permissions that will not require passwords from `jenkins` upon execution of commands. Find the line that has the following contents:
```shell
root    ALL=(ALL)       ALL
```

Add `jenkins ALL=(ALL)       NOPASSWD: ALL` under the `root    ALL=(ALL)       ALL` line to ensure jenkins user does not require a password especially in terms of running jenkins jobs. Adding it under would look like the following:
```shell
root    ALL=(ALL)       ALL
jenkins ALL=(ALL)       NOPASSWD: ALL
```

## 4. Authors
* [Ali Muhammad](https://www.linkedin.com/in/ali-muhammad-759791130/)

## 5. License
Please see [License](https://github.com/Tech-Overlord/jenkins-nginx-jdk8/blob/master/LICENSE.md) for use or feel free to ask.