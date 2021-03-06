curl -o  /etc/yum.repos.d/centos.repo https://raw.githubusercontent.com/tso-ansible/ansible-tower/master/centos.repo
yum clean
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
rpm -ivh epel-release-latest-7.noarch.rpm 

mkdir agent
cd agent
wget https://vstsagentpackage.azureedge.net/agent/2.140.2/vsts-agent-linux-x64-2.140.2.tar.gz
tar -xzf vsts-agent-linux-x64-2.140.2.tar.gz 
 
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum -y install git2u 
sudo ./bin/installdependencies.sh 


curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.rpm.sh | sudo bash
sudo yum install git-lfs
sudo git lfs install 

./config.sh
./run.sh
