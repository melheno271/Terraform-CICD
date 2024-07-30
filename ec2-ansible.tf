module "ec2_instance_ansible" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name = "Ansible-Server"

  instance_type               = var.instance_type
  key_name                    = "jenkins-server-key"
  monitoring                  = true
  vpc_security_group_ids      = [module.ansible_service_sg.security_group_id]
  subnet_id                   = module.vpc.public_subnets[0]
  availability_zone           = data.aws_availability_zones.azs.names[0]
  associate_public_ip_address = true
  user_data                   = file("user-data-ansible.sh")
  ami                         = "ami-0c7217cdde317cfec"

  tags = {
    Name        = "Ansible-Server"
    Environment = "dev"
  }
}

