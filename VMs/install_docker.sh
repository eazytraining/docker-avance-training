
#!/bin/bash
# yum -y update
# yum -y install epel-release

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
usermod -aG docker vagrant
systemctl enable docker
systemctl start docker
yum install -y sshpass

#Install app
yum -y install nano git
