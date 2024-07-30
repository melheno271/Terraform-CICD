#integrate docker server to ansible
cd /etc/ansible/
sudo nano hosts
[dockerservers]
dockerip


ssh-keygen
cd .ssh/
cat id_rsa.pub #key ansible


cd ~
mkdir playbooks
cd playbooks

#docker server
sudo su
ssh-keygen
cd .ssh
nano authorized_keys
# enter key ansible save and exit
systemctl reload sshd

