
sqa_ec2d37359250e5e7368bf948567c6382c8143727
sonar.projectKey=mico


scp -r /var/lib/jenkins/workspace/ansible-jenkins/* root@35.173.186.171:~/project
ansible-playbook  /home/ubuntu/playbook/deployment.yaml

Open /etc/ssh/sshd_config and add

PubkeyAuthentication yes

systemctl reload sshd

/etc/ansible/hosts

ssh-copy-id remote_username@remote_server_ip_address

scp -r /var/lib/jenkins/workspace/ansible-jenkins/* root@35.173.186.171:~/project
ssh ubuntu@44.210.136.154 ansible-playbook  /home/ubuntu/playbook/deployment.yaml

ssh2easy jenkins plugin